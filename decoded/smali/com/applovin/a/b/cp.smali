.class Lcom/applovin/a/b/cp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/m;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/a;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/applovin/a/b/a;

.field final synthetic d:Lcom/applovin/adview/b;

.field final synthetic e:Lcom/applovin/a/b/d;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/d;Lcom/applovin/a/a/a;Landroid/net/Uri;Lcom/applovin/a/b/a;Lcom/applovin/adview/b;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/cp;->e:Lcom/applovin/a/b/d;

    iput-object p2, p0, Lcom/applovin/a/b/cp;->a:Lcom/applovin/a/a/a;

    iput-object p3, p0, Lcom/applovin/a/b/cp;->b:Landroid/net/Uri;

    iput-object p4, p0, Lcom/applovin/a/b/cp;->c:Lcom/applovin/a/b/a;

    iput-object p5, p0, Lcom/applovin/a/b/cp;->d:Lcom/applovin/adview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/cp;->e:Lcom/applovin/a/b/d;

    invoke-static {v0}, Lcom/applovin/a/b/d;->a(Lcom/applovin/a/b/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/cq;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/cq;-><init>(Lcom/applovin/a/b/cp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/cp;->e:Lcom/applovin/a/b/d;

    invoke-static {v0}, Lcom/applovin/a/b/d;->a(Lcom/applovin/a/b/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/cr;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/cr;-><init>(Lcom/applovin/a/b/cp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
