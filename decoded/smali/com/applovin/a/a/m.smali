.class Lcom/applovin/a/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/c/a;

.field final synthetic b:Lcom/applovin/a/a/j;


# direct methods
.method constructor <init>(Lcom/applovin/a/a/j;Lcom/applovin/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/m;->b:Lcom/applovin/a/a/j;

    iput-object p2, p0, Lcom/applovin/a/a/m;->a:Lcom/applovin/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/m;->b:Lcom/applovin/a/a/j;

    invoke-static {v0}, Lcom/applovin/a/a/j;->c(Lcom/applovin/a/a/j;)Lcom/applovin/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/m;->b:Lcom/applovin/a/a/j;

    invoke-static {v0}, Lcom/applovin/a/a/j;->c(Lcom/applovin/a/a/j;)Lcom/applovin/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/a/m;->a:Lcom/applovin/c/a;

    invoke-interface {v0, v1}, Lcom/applovin/c/d;->adReceived(Lcom/applovin/c/a;)V

    :cond_0
    return-void
.end method
