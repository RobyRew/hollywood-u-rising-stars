.class Lcom/applovin/a/b/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/m;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/at;

.field final synthetic b:Lcom/applovin/a/b/ar;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/ar;Lcom/applovin/a/b/at;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/as;->b:Lcom/applovin/a/b/ar;

    iput-object p2, p0, Lcom/applovin/a/b/as;->a:Lcom/applovin/a/b/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/as;->b:Lcom/applovin/a/b/ar;

    iget-object v1, p0, Lcom/applovin/a/b/as;->a:Lcom/applovin/a/b/at;

    invoke-static {v0, v1}, Lcom/applovin/a/b/ar;->a(Lcom/applovin/a/b/ar;Lcom/applovin/a/b/at;)V

    iget-object v0, p0, Lcom/applovin/a/b/as;->b:Lcom/applovin/a/b/ar;

    invoke-static {v0}, Lcom/applovin/a/b/ar;->a(Lcom/applovin/a/b/ar;)Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Successfully submitted postback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/as;->a:Lcom/applovin/a/b/at;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/as;->b:Lcom/applovin/a/b/ar;

    invoke-virtual {v0}, Lcom/applovin/a/b/ar;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/as;->b:Lcom/applovin/a/b/ar;

    invoke-static {v0}, Lcom/applovin/a/b/ar;->a(Lcom/applovin/a/b/ar;)Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to submit postback with errorCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Will retry later...  Postback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/as;->a:Lcom/applovin/a/b/at;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/as;->b:Lcom/applovin/a/b/ar;

    iget-object v1, p0, Lcom/applovin/a/b/as;->a:Lcom/applovin/a/b/at;

    invoke-static {v0, v1}, Lcom/applovin/a/b/ar;->b(Lcom/applovin/a/b/ar;Lcom/applovin/a/b/at;)V

    return-void
.end method
