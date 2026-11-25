.class Lcom/applovin/a/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/a;

.field private final b:Lcom/applovin/c/a;


# direct methods
.method public constructor <init>(Lcom/applovin/a/a/a;Lcom/applovin/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/x;->a:Lcom/applovin/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/a/a/x;->b:Lcom/applovin/c/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/a/x;->a:Lcom/applovin/a/a/a;

    invoke-static {v0}, Lcom/applovin/a/a/a;->g(Lcom/applovin/a/a/a;)Lcom/applovin/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/applovin/a/a/x;->b:Lcom/applovin/c/a;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/a/a/x;->b:Lcom/applovin/c/a;

    invoke-interface {v0, v1}, Lcom/applovin/c/c;->adHidden(Lcom/applovin/c/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/a/x;->a:Lcom/applovin/a/a/a;

    invoke-static {v1}, Lcom/applovin/a/a/a;->b(Lcom/applovin/a/a/a;)Lcom/applovin/c/l;

    move-result-object v1

    const-string/jumbo v2, "AppLovinAdView"

    const-string/jumbo v3, "Exception while notifying ad display listener"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
