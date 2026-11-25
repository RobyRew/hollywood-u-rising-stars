.class Lcom/applovin/a/a/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/c;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/j;

.field final synthetic b:Lcom/applovin/a/a/an;


# direct methods
.method constructor <init>(Lcom/applovin/a/a/an;Lcom/applovin/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/ao;->b:Lcom/applovin/a/a/an;

    iput-object p2, p0, Lcom/applovin/a/a/ao;->a:Lcom/applovin/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/c/a;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/ao;->b:Lcom/applovin/a/a/an;

    invoke-static {v0}, Lcom/applovin/a/a/an;->d(Lcom/applovin/a/a/an;)V

    iget-object v0, p0, Lcom/applovin/a/a/ao;->b:Lcom/applovin/a/a/an;

    invoke-static {v0}, Lcom/applovin/a/a/an;->e(Lcom/applovin/a/a/an;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/a/ao;->a:Lcom/applovin/a/a/j;

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->g()Lcom/applovin/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/c/c;->adDisplayed(Lcom/applovin/c/a;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/a/ao;->b:Lcom/applovin/a/a/an;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applovin/a/a/an;->b(Lcom/applovin/a/a/an;Z)Z

    :cond_1
    return-void
.end method

.method public adHidden(Lcom/applovin/c/a;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/ao;->b:Lcom/applovin/a/a/an;

    invoke-static {v0}, Lcom/applovin/a/a/an;->b(Lcom/applovin/a/a/an;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/a/ao;->b:Lcom/applovin/a/a/an;

    invoke-static {v1}, Lcom/applovin/a/a/an;->a(Lcom/applovin/a/a/an;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/a/a/ao;->a:Lcom/applovin/a/a/j;

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->g()Lcom/applovin/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/a/ao;->b:Lcom/applovin/a/a/an;

    invoke-static {v1}, Lcom/applovin/a/a/an;->c(Lcom/applovin/a/a/an;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/c/c;->adHidden(Lcom/applovin/c/a;)V

    iget-object v0, p0, Lcom/applovin/a/a/ao;->b:Lcom/applovin/a/a/an;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applovin/a/a/an;->a(Lcom/applovin/a/a/an;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/a/ao;->a:Lcom/applovin/a/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/j;->a(Z)V

    return-void
.end method
