.class final Lcom/sponsorpay/publisher/mbe/player/caching/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/sponsorpay/publisher/mbe/player/caching/d;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/player/caching/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/j;->b:Lcom/sponsorpay/publisher/mbe/player/caching/d;

    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/j;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/j;->b:Lcom/sponsorpay/publisher/mbe/player/caching/d;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a(Lcom/sponsorpay/publisher/mbe/player/caching/d;)Lcom/sponsorpay/publisher/mbe/player/caching/m;

    move-result-object v0

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/caching/m;->a:Lcom/sponsorpay/publisher/mbe/player/caching/m;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/j;->b:Lcom/sponsorpay/publisher/mbe/player/caching/d;

    new-instance v1, Lcom/sponsorpay/publisher/mbe/player/caching/m;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/m;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a(Lcom/sponsorpay/publisher/mbe/player/caching/d;Lcom/sponsorpay/publisher/mbe/player/caching/m;)Lcom/sponsorpay/publisher/mbe/player/caching/m;

    .line 44
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/j;->b:Lcom/sponsorpay/publisher/mbe/player/caching/d;

    new-instance v1, Lcom/sponsorpay/publisher/mbe/player/caching/l;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/l;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a(Lcom/sponsorpay/publisher/mbe/player/caching/d;Lcom/sponsorpay/publisher/mbe/player/caching/l;)Lcom/sponsorpay/publisher/mbe/player/caching/l;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/j;->b:Lcom/sponsorpay/publisher/mbe/player/caching/d;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a(Lcom/sponsorpay/publisher/mbe/player/caching/d;)Lcom/sponsorpay/publisher/mbe/player/caching/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/j;->a:Landroid/content/Context;

    const-class v2, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/j;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string/jumbo v0, "SPCacheManager"

    const-string/jumbo v1, "Cache is not enabled."

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
