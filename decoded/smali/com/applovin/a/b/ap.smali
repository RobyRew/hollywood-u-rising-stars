.class Lcom/applovin/a/b/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/b/c;


# instance fields
.field final synthetic a:Lcom/applovin/b/c;

.field final synthetic b:Lcom/applovin/a/b/an;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/an;Lcom/applovin/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/ap;->b:Lcom/applovin/a/b/an;

    iput-object p2, p0, Lcom/applovin/a/b/ap;->a:Lcom/applovin/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/b/a;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/applovin/b/a;I)V
    .locals 0

    return-void
.end method

.method public b(Lcom/applovin/b/a;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/b/ap;->b:Lcom/applovin/a/b/an;

    iget-object v1, p0, Lcom/applovin/a/b/ap;->a:Lcom/applovin/b/c;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/applovin/a/b/an;->a(Lcom/applovin/a/b/an;Lcom/applovin/b/c;Lcom/applovin/b/a;Z)V

    return-void
.end method

.method public b(Lcom/applovin/b/a;I)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/b/ap;->b:Lcom/applovin/a/b/an;

    iget-object v1, p0, Lcom/applovin/a/b/ap;->a:Lcom/applovin/b/c;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, p2, v2}, Lcom/applovin/a/b/an;->a(Lcom/applovin/a/b/an;Lcom/applovin/b/c;Lcom/applovin/b/a;IZ)V

    return-void
.end method
