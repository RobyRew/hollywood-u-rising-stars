.class Lcom/applovin/a/b/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/b/d;


# instance fields
.field private final a:Lcom/applovin/a/b/e;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/a/b/an;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/a/b/an;->a:Lcom/applovin/a/b/e;

    return-void
.end method

.method private a(Lcom/applovin/b/a;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Lcom/applovin/a/b/g;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/a/b/an;Lcom/applovin/b/a;Lcom/applovin/b/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/a/b/an;->b(Lcom/applovin/b/a;Lcom/applovin/b/c;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/an;Lcom/applovin/b/c;Lcom/applovin/b/a;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/a/b/an;->a(Lcom/applovin/b/c;Lcom/applovin/b/a;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/an;Lcom/applovin/b/c;Lcom/applovin/b/a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/a/b/an;->a(Lcom/applovin/b/c;Lcom/applovin/b/a;Z)V

    return-void
.end method

.method private a(Lcom/applovin/b/c;Lcom/applovin/b/a;IZ)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p4, :cond_1

    :try_start_0
    invoke-interface {p1, p2, p3}, Lcom/applovin/b/c;->b(Lcom/applovin/b/a;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, p2, p3}, Lcom/applovin/b/c;->a(Lcom/applovin/b/a;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/b/an;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v1

    const-string/jumbo v2, "WidgetServiceImpl"

    const-string/jumbo v3, "Encountered exception whilst notifying user callback"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/applovin/b/c;Lcom/applovin/b/a;Z)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface {p1, p2}, Lcom/applovin/b/c;->b(Lcom/applovin/b/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, p2}, Lcom/applovin/b/c;->a(Lcom/applovin/b/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/b/an;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v1

    const-string/jumbo v2, "WidgetServiceImpl"

    const-string/jumbo v3, "Encountered exception whilst notifying user callback"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lcom/applovin/b/a;Lcom/applovin/b/c;)V
    .locals 4

    invoke-interface {p1}, Lcom/applovin/b/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Lcom/applovin/b/c;->b(Lcom/applovin/b/a;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/a/b/an;->a(Lcom/applovin/b/a;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/bn;

    iget-object v2, p0, Lcom/applovin/a/b/an;->a:Lcom/applovin/a/b/e;

    new-instance v3, Lcom/applovin/a/b/ap;

    invoke-direct {v3, p0, p2}, Lcom/applovin/a/b/ap;-><init>(Lcom/applovin/a/b/an;Lcom/applovin/b/c;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/applovin/a/b/bn;-><init>(Lcom/applovin/a/b/e;Ljava/util/List;Lcom/applovin/b/c;)V

    iget-object v0, p0, Lcom/applovin/a/b/an;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->k()Lcom/applovin/a/b/bw;

    move-result-object v0

    sget-object v2, Lcom/applovin/a/b/bx;->a:Lcom/applovin/a/b/bx;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/applovin/b/a;Lcom/applovin/b/c;)V
    .locals 4

    invoke-interface {p1}, Lcom/applovin/b/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Lcom/applovin/b/c;->a(Lcom/applovin/b/a;)V

    invoke-direct {p0, p1, p2}, Lcom/applovin/a/b/an;->b(Lcom/applovin/b/a;Lcom/applovin/b/c;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/a/b/an;->a(Lcom/applovin/b/a;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/bl;

    iget-object v2, p0, Lcom/applovin/a/b/an;->a:Lcom/applovin/a/b/e;

    new-instance v3, Lcom/applovin/a/b/ao;

    invoke-direct {v3, p0, p2}, Lcom/applovin/a/b/ao;-><init>(Lcom/applovin/a/b/an;Lcom/applovin/b/c;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/applovin/a/b/bl;-><init>(Lcom/applovin/a/b/e;Ljava/util/List;Lcom/applovin/b/c;)V

    iget-object v0, p0, Lcom/applovin/a/b/an;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->k()Lcom/applovin/a/b/bw;

    move-result-object v0

    sget-object v2, Lcom/applovin/a/b/bx;->a:Lcom/applovin/a/b/bx;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;)V

    goto :goto_0
.end method
