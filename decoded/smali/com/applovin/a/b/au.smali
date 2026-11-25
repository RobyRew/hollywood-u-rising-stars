.class Lcom/applovin/a/b/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/m;


# instance fields
.field final synthetic a:Lcom/applovin/c/m;

.field final synthetic b:Lcom/applovin/a/b/h;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/h;Lcom/applovin/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/au;->b:Lcom/applovin/a/b/h;

    iput-object p2, p0, Lcom/applovin/a/b/au;->a:Lcom/applovin/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/au;->b:Lcom/applovin/a/b/h;

    invoke-static {v0}, Lcom/applovin/a/b/h;->a(Lcom/applovin/a/b/h;)Lcom/applovin/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "PostbackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Successfully dispatched postback to URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/au;->a:Lcom/applovin/c/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/au;->a:Lcom/applovin/c/m;

    invoke-interface {v0, p1}, Lcom/applovin/c/m;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/au;->b:Lcom/applovin/a/b/h;

    invoke-static {v0}, Lcom/applovin/a/b/h;->a(Lcom/applovin/a/b/h;)Lcom/applovin/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "PostbackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to dispatch postback to URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/au;->a:Lcom/applovin/c/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/au;->a:Lcom/applovin/c/m;

    invoke-interface {v0, p1, p2}, Lcom/applovin/c/m;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
