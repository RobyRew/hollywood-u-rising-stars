.class Lcom/applovin/a/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/e;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/dk;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/dk;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/j;->a:Lcom/applovin/a/b/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userDeclinedToViewAd(Lcom/applovin/c/a;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/b/j;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->d(Lcom/applovin/a/b/dk;)Lcom/applovin/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "IncentivizedAdController"

    const-string/jumbo v2, "User declined to view"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public userOverQuota(Lcom/applovin/c/a;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/j;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->d(Lcom/applovin/a/b/dk;)Lcom/applovin/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "IncentivizedAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User over quota: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public userRewardRejected(Lcom/applovin/c/a;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/j;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->d(Lcom/applovin/a/b/dk;)Lcom/applovin/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "IncentivizedAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reward rejected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public userRewardVerified(Lcom/applovin/c/a;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/j;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->d(Lcom/applovin/a/b/dk;)Lcom/applovin/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "IncentivizedAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reward validated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/c/a;I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/j;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->d(Lcom/applovin/a/b/dk;)Lcom/applovin/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "IncentivizedAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reward validation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
