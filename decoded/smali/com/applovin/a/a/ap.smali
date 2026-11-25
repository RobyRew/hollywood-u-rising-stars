.class Lcom/applovin/a/a/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/b;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/j;

.field final synthetic b:Lcom/applovin/a/a/an;


# direct methods
.method constructor <init>(Lcom/applovin/a/a/an;Lcom/applovin/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/ap;->b:Lcom/applovin/a/a/an;

    iput-object p2, p0, Lcom/applovin/a/a/ap;->a:Lcom/applovin/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/ap;->a:Lcom/applovin/a/a/j;

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->h()Lcom/applovin/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/c/b;->adClicked(Lcom/applovin/c/a;)V

    :cond_0
    return-void
.end method
