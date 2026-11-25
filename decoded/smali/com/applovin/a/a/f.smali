.class Lcom/applovin/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/c/a;

.field final synthetic b:Lcom/applovin/a/a/an;


# direct methods
.method constructor <init>(Lcom/applovin/a/a/an;Lcom/applovin/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/f;->b:Lcom/applovin/a/a/an;

    iput-object p2, p0, Lcom/applovin/a/a/f;->a:Lcom/applovin/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/f;->b:Lcom/applovin/a/a/an;

    invoke-static {v0}, Lcom/applovin/a/a/an;->f(Lcom/applovin/a/a/an;)Lcom/applovin/adview/b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/a/f;->a:Lcom/applovin/c/a;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/b;->a(Lcom/applovin/c/a;)V

    iget-object v1, p0, Lcom/applovin/a/a/f;->b:Lcom/applovin/a/a/an;

    iget-object v0, p0, Lcom/applovin/a/a/f;->a:Lcom/applovin/c/a;

    check-cast v0, Lcom/applovin/a/b/a;

    invoke-virtual {v0}, Lcom/applovin/a/b/a;->i()Lcom/applovin/a/a/al;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/applovin/a/a/an;->a(Lcom/applovin/a/a/an;Lcom/applovin/a/a/al;)V

    return-void
.end method
