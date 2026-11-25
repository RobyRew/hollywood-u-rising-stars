.class Lcom/applovin/a/a/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/d;
.implements Lcom/applovin/c/i;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Lcom/applovin/c/f;

.field private final c:Lcom/applovin/c/l;


# direct methods
.method constructor <init>(Lcom/applovin/a/a/a;Lcom/applovin/c/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No view specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/a/a/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lcom/applovin/c/n;->f()Lcom/applovin/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/a/ab;->c:Lcom/applovin/c/l;

    invoke-virtual {p2}, Lcom/applovin/c/n;->d()Lcom/applovin/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/a/ab;->b:Lcom/applovin/c/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/c/a;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/a/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/applovin/a/a/a;->b(Lcom/applovin/c/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/a/ab;->b:Lcom/applovin/c/f;

    invoke-interface {p1}, Lcom/applovin/c/a;->b()Lcom/applovin/c/g;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/applovin/c/f;->a(Lcom/applovin/c/i;Lcom/applovin/c/g;)V

    iget-object v0, p0, Lcom/applovin/a/a/ab;->c:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinAdView"

    const-string/jumbo v2, "Ad view has been garbage collected by the time an ad was updated"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public adReceived(Lcom/applovin/c/a;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/a/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/applovin/a/a/a;->b(Lcom/applovin/c/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/a/ab;->c:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinAdView"

    const-string/jumbo v2, "Ad view has been garbage collected by the time an ad was recieved"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/applovin/a/a/a;->b(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[AdViewController listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
