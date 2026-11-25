.class Lcom/applovin/a/b/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/b/c;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/al;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/al;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/am;->a:Lcom/applovin/a/b/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/b/a;)V
    .locals 1

    invoke-interface {p1}, Lcom/applovin/b/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/c/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/am;->a:Lcom/applovin/a/b/al;

    check-cast p1, Lcom/applovin/a/b/ah;

    invoke-virtual {v0, p1}, Lcom/applovin/a/b/al;->c(Lcom/applovin/a/b/ah;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/b/a;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/am;->a:Lcom/applovin/a/b/al;

    sget-object v1, Lcom/applovin/a/b/g;->c:Lcom/applovin/a/b/bf;

    invoke-virtual {v0, v1, p2}, Lcom/applovin/a/b/al;->b(Lcom/applovin/a/b/bf;I)V

    return-void
.end method

.method public b(Lcom/applovin/b/a;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/am;->a:Lcom/applovin/a/b/al;

    check-cast p1, Lcom/applovin/a/b/ah;

    invoke-virtual {v0, p1}, Lcom/applovin/a/b/al;->c(Lcom/applovin/a/b/ah;)V

    return-void
.end method

.method public b(Lcom/applovin/b/a;I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/am;->a:Lcom/applovin/a/b/al;

    iget-object v0, v0, Lcom/applovin/a/b/al;->b:Lcom/applovin/c/l;

    const-string/jumbo v1, "NativeAdPreloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Video failed to cache during native ad preload. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/am;->a:Lcom/applovin/a/b/al;

    check-cast p1, Lcom/applovin/a/b/ah;

    invoke-virtual {v0, p1}, Lcom/applovin/a/b/al;->c(Lcom/applovin/a/b/ah;)V

    return-void
.end method
