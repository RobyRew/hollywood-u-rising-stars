.class public Lcom/applovin/a/b/bq;
.super Lcom/applovin/a/b/ba;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;

.field private final c:Lcom/applovin/c/m;

.field private d:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lcom/applovin/a/b/e;Ljava/lang/String;Ljava/util/Map;Lcom/applovin/c/m;)V
    .locals 1

    const-string/jumbo v0, "TaskDispatchPostback"

    invoke-direct {p0, v0, p1}, Lcom/applovin/a/b/ba;-><init>(Ljava/lang/String;Lcom/applovin/a/b/e;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/a/b/bq;->j:I

    iput-object p2, p0, Lcom/applovin/a/b/bq;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/a/b/bq;->c:Lcom/applovin/c/m;

    iput-object p3, p0, Lcom/applovin/a/b/bq;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/bq;)I
    .locals 1

    iget v0, p0, Lcom/applovin/a/b/bq;->j:I

    return v0
.end method

.method static synthetic b(Lcom/applovin/a/b/bq;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/bq;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/a/b/bq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/bq;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/a/b/bq;)Lcom/applovin/c/m;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/bq;->c:Lcom/applovin/c/m;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/a/b/bq;->d:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/a/b/bq;->i:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/a/b/bq;->j:I

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/bq;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/c/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bq;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "TaskDispatchPostback"

    const-string/jumbo v2, "Requested URL is not valid; nothing to do..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/bq;->c:Lcom/applovin/c/m;

    iget-object v1, p0, Lcom/applovin/a/b/bq;->a:Ljava/lang/String;

    const/16 v2, -0x384

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/m;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/applovin/a/b/bq;->d:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/b/bq;->f:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->aG:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    new-instance v1, Lcom/applovin/a/b/br;

    const-string/jumbo v2, "RepeatTaskDispatchPostback"

    iget-object v3, p0, Lcom/applovin/a/b/bq;->f:Lcom/applovin/a/b/e;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/applovin/a/b/br;-><init>(Lcom/applovin/a/b/bq;Ljava/lang/String;ILcom/applovin/a/b/e;)V

    iget v0, p0, Lcom/applovin/a/b/bq;->i:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/applovin/a/b/cd;->a(J)V

    invoke-virtual {v1}, Lcom/applovin/a/b/cd;->run()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/applovin/a/b/bq;->d:I

    goto :goto_1
.end method
