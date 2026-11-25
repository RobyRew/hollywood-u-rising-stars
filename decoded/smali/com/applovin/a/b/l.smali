.class Lcom/applovin/a/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/c/a;

.field final synthetic b:Lcom/applovin/a/b/k;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/k;Lcom/applovin/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/l;->b:Lcom/applovin/a/b/k;

    iput-object p2, p0, Lcom/applovin/a/b/l;->a:Lcom/applovin/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/l;->b:Lcom/applovin/a/b/k;

    invoke-static {v0}, Lcom/applovin/a/b/k;->a(Lcom/applovin/a/b/k;)Lcom/applovin/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/l;->a:Lcom/applovin/c/a;

    invoke-interface {v0, v1}, Lcom/applovin/c/d;->adReceived(Lcom/applovin/c/a;)V

    return-void
.end method
