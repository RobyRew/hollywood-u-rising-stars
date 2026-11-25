.class Lcom/applovin/a/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/d;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/j;


# direct methods
.method constructor <init>(Lcom/applovin/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/k;->a:Lcom/applovin/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/k;->a:Lcom/applovin/a/a/j;

    invoke-static {v0, p1}, Lcom/applovin/a/a/j;->a(Lcom/applovin/a/a/j;Lcom/applovin/c/a;)V

    iget-object v0, p0, Lcom/applovin/a/a/k;->a:Lcom/applovin/a/a/j;

    invoke-virtual {v0, p1}, Lcom/applovin/a/a/j;->a(Lcom/applovin/c/a;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/k;->a:Lcom/applovin/a/a/j;

    invoke-static {v0, p1}, Lcom/applovin/a/a/j;->a(Lcom/applovin/a/a/j;I)V

    return-void
.end method
