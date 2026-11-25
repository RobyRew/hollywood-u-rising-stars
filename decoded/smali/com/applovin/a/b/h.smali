.class public Lcom/applovin/a/b/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/a/b/e;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/a/b/h;->a:Lcom/applovin/a/b/e;

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/h;)Lcom/applovin/a/b/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/h;->a:Lcom/applovin/a/b/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/applovin/c/m;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/applovin/a/b/h;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/c/m;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;IIILcom/applovin/c/m;)V
    .locals 3

    invoke-static {p1}, Lcom/applovin/c/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/applovin/a/b/bq;

    iget-object v1, p0, Lcom/applovin/a/b/h;->a:Lcom/applovin/a/b/e;

    invoke-direct {v0, v1, p1, p2, p6}, Lcom/applovin/a/b/bq;-><init>(Lcom/applovin/a/b/e;Ljava/lang/String;Ljava/util/Map;Lcom/applovin/c/m;)V

    invoke-virtual {v0, p4}, Lcom/applovin/a/b/bq;->b(I)V

    invoke-virtual {v0, p3}, Lcom/applovin/a/b/bq;->a(I)V

    invoke-virtual {v0, p5}, Lcom/applovin/a/b/bq;->c(I)V

    iget-object v1, p0, Lcom/applovin/a/b/h;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->k()Lcom/applovin/a/b/bw;

    move-result-object v1

    sget-object v2, Lcom/applovin/a/b/bx;->c:Lcom/applovin/a/b/bx;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/b/h;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "PostbackService"

    const-string/jumbo v2, "Requested a postback dispatch for an empty URL; nothing to do..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    const/16 v0, -0x384

    invoke-interface {p6, p1, v0}, Lcom/applovin/c/m;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/c/m;)V
    .locals 3

    invoke-static {p1}, Lcom/applovin/c/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/h;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "PostbackService"

    const-string/jumbo v2, "Ignoring enqueued postback request to invalid URL"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/applovin/a/b/bq;

    iget-object v1, p0, Lcom/applovin/a/b/h;->a:Lcom/applovin/a/b/e;

    new-instance v2, Lcom/applovin/a/b/au;

    invoke-direct {v2, p0, p3}, Lcom/applovin/a/b/au;-><init>(Lcom/applovin/a/b/h;Lcom/applovin/c/m;)V

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/applovin/a/b/bq;-><init>(Lcom/applovin/a/b/e;Ljava/lang/String;Ljava/util/Map;Lcom/applovin/c/m;)V

    iget-object v1, p0, Lcom/applovin/a/b/h;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->k()Lcom/applovin/a/b/bw;

    move-result-object v1

    sget-object v2, Lcom/applovin/a/b/bx;->c:Lcom/applovin/a/b/bx;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;)V

    goto :goto_0
.end method
