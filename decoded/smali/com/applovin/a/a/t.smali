.class Lcom/applovin/a/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/c;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/a;


# direct methods
.method constructor <init>(Lcom/applovin/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/t;->a:Lcom/applovin/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/c/a;)V
    .locals 0

    return-void
.end method

.method public adHidden(Lcom/applovin/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/t;->a:Lcom/applovin/a/a/a;

    invoke-static {v0}, Lcom/applovin/a/a/a;->g(Lcom/applovin/a/a/a;)Lcom/applovin/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/t;->a:Lcom/applovin/a/a/a;

    invoke-static {v0}, Lcom/applovin/a/a/a;->g(Lcom/applovin/a/a/a;)Lcom/applovin/c/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/c/c;->adHidden(Lcom/applovin/c/a;)V

    :cond_0
    return-void
.end method
