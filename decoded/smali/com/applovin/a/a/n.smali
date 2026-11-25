.class Lcom/applovin/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/applovin/a/a/j;


# direct methods
.method constructor <init>(Lcom/applovin/a/a/j;I)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/n;->b:Lcom/applovin/a/a/j;

    iput p2, p0, Lcom/applovin/a/a/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/n;->b:Lcom/applovin/a/a/j;

    invoke-static {v0}, Lcom/applovin/a/a/j;->c(Lcom/applovin/a/a/j;)Lcom/applovin/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/n;->b:Lcom/applovin/a/a/j;

    invoke-static {v0}, Lcom/applovin/a/a/j;->c(Lcom/applovin/a/a/j;)Lcom/applovin/c/d;

    move-result-object v0

    iget v1, p0, Lcom/applovin/a/a/n;->a:I

    invoke-interface {v0, v1}, Lcom/applovin/c/d;->failedToReceiveAd(I)V

    :cond_0
    return-void
.end method
