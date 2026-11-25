.class Lcom/applovin/a/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/applovin/a/a/a;


# direct methods
.method constructor <init>(Lcom/applovin/a/a/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/r;->b:Lcom/applovin/a/a/a;

    iput p2, p0, Lcom/applovin/a/a/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/a/a/r;->b:Lcom/applovin/a/a/a;

    invoke-static {v0}, Lcom/applovin/a/a/a;->a(Lcom/applovin/a/a/a;)Lcom/applovin/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/r;->b:Lcom/applovin/a/a/a;

    invoke-static {v0}, Lcom/applovin/a/a/a;->a(Lcom/applovin/a/a/a;)Lcom/applovin/c/d;

    move-result-object v0

    iget v1, p0, Lcom/applovin/a/a/r;->a:I

    invoke-interface {v0, v1}, Lcom/applovin/c/d;->failedToReceiveAd(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/a/r;->b:Lcom/applovin/a/a/a;

    invoke-static {v1}, Lcom/applovin/a/a/a;->b(Lcom/applovin/a/a/a;)Lcom/applovin/c/l;

    move-result-object v1

    const-string/jumbo v2, "AppLovinAdView"

    const-string/jumbo v3, "Exception while running app load  callback"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
