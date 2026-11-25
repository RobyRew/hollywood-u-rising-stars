.class Lcom/applovin/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/an;


# direct methods
.method private constructor <init>(Lcom/applovin/a/a/an;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/i;->a:Lcom/applovin/a/a/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/a/a/an;Lcom/applovin/a/a/ao;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/a/i;-><init>(Lcom/applovin/a/a/an;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/a/a/i;->a:Lcom/applovin/a/a/an;

    invoke-virtual {v0}, Lcom/applovin/a/a/an;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/a/i;->a:Lcom/applovin/a/a/an;

    invoke-static {v1}, Lcom/applovin/a/a/an;->g(Lcom/applovin/a/a/an;)Lcom/applovin/c/l;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/a/a/i;->a:Lcom/applovin/a/a/an;

    invoke-static {v1}, Lcom/applovin/a/a/an;->g(Lcom/applovin/a/a/an;)Lcom/applovin/c/l;

    move-result-object v1

    const-string/jumbo v2, "InterstitialAdDialog"

    const-string/jumbo v3, "dismiss() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
