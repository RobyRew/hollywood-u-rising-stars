.class Lcom/applovin/a/b/cq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/cp;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/cq;->a:Lcom/applovin/a/b/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/applovin/a/b/cq;->a:Lcom/applovin/a/b/cp;

    iget-object v0, v0, Lcom/applovin/a/b/cp;->a:Lcom/applovin/a/a/a;

    invoke-virtual {v0}, Lcom/applovin/a/a/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/cq;->a:Lcom/applovin/a/b/cp;

    iget-object v0, v0, Lcom/applovin/a/b/cp;->e:Lcom/applovin/a/b/d;

    iget-object v1, p0, Lcom/applovin/a/b/cq;->a:Lcom/applovin/a/b/cp;

    iget-object v1, v1, Lcom/applovin/a/b/cp;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/applovin/a/b/cq;->a:Lcom/applovin/a/b/cp;

    iget-object v2, v2, Lcom/applovin/a/b/cp;->c:Lcom/applovin/a/b/a;

    iget-object v3, p0, Lcom/applovin/a/b/cq;->a:Lcom/applovin/a/b/cp;

    iget-object v3, v3, Lcom/applovin/a/b/cp;->d:Lcom/applovin/adview/b;

    iget-object v4, p0, Lcom/applovin/a/b/cq;->a:Lcom/applovin/a/b/cp;

    iget-object v4, v4, Lcom/applovin/a/b/cp;->a:Lcom/applovin/a/a/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/applovin/a/b/d;->a(Lcom/applovin/a/b/d;Landroid/net/Uri;Lcom/applovin/a/b/a;Lcom/applovin/adview/b;Lcom/applovin/a/a/a;)V

    :cond_0
    return-void
.end method
