.class Lcom/applovin/a/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/d;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/dk;

.field private final b:Lcom/applovin/c/d;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/dk;Lcom/applovin/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/k;->a:Lcom/applovin/a/b/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/a/b/k;->b:Lcom/applovin/c/d;

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/k;)Lcom/applovin/c/d;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/k;->b:Lcom/applovin/c/d;

    return-object v0
.end method


# virtual methods
.method public adReceived(Lcom/applovin/c/a;)V
    .locals 2

    iget-object v1, p0, Lcom/applovin/a/b/k;->a:Lcom/applovin/a/b/dk;

    move-object v0, p1

    check-cast v0, Lcom/applovin/a/b/a;

    invoke-static {v1, v0}, Lcom/applovin/a/b/dk;->a(Lcom/applovin/a/b/dk;Lcom/applovin/a/b/a;)Lcom/applovin/a/b/a;

    iget-object v0, p0, Lcom/applovin/a/b/k;->b:Lcom/applovin/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/k;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->c(Lcom/applovin/a/b/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/l;

    invoke-direct {v1, p0, p1}, Lcom/applovin/a/b/l;-><init>(Lcom/applovin/a/b/k;Lcom/applovin/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/k;->b:Lcom/applovin/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/k;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->c(Lcom/applovin/a/b/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/m;

    invoke-direct {v1, p0, p1}, Lcom/applovin/a/b/m;-><init>(Lcom/applovin/a/b/k;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
