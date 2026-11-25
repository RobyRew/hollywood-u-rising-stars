.class Lcom/applovin/a/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/c/a;

.field final synthetic b:Lcom/applovin/a/b/n;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/n;Lcom/applovin/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/r;->b:Lcom/applovin/a/b/n;

    iput-object p2, p0, Lcom/applovin/a/b/r;->a:Lcom/applovin/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/r;->b:Lcom/applovin/a/b/n;

    invoke-static {v0}, Lcom/applovin/a/b/n;->d(Lcom/applovin/a/b/n;)Lcom/applovin/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/r;->a:Lcom/applovin/c/a;

    invoke-interface {v0, v1}, Lcom/applovin/c/j;->videoPlaybackBegan(Lcom/applovin/c/a;)V

    return-void
.end method
