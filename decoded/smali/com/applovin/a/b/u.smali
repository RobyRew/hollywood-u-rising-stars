.class Lcom/applovin/a/b/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/c/a;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/applovin/a/b/n;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/n;Lcom/applovin/c/a;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/u;->c:Lcom/applovin/a/b/n;

    iput-object p2, p0, Lcom/applovin/a/b/u;->a:Lcom/applovin/c/a;

    iput-object p3, p0, Lcom/applovin/a/b/u;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/b/u;->c:Lcom/applovin/a/b/n;

    invoke-static {v0}, Lcom/applovin/a/b/n;->a(Lcom/applovin/a/b/n;)Lcom/applovin/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/u;->a:Lcom/applovin/c/a;

    iget-object v2, p0, Lcom/applovin/a/b/u;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/e;->userOverQuota(Lcom/applovin/c/a;Ljava/util/Map;)V

    return-void
.end method
