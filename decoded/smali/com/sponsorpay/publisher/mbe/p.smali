.class final Lcom/sponsorpay/publisher/mbe/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/b;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/b;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/p;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 701
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/p;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->m(Lcom/sponsorpay/publisher/mbe/b;)Lcom/sponsorpay/publisher/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 703
    :try_start_0
    invoke-static {}, Lcom/sponsorpay/a;->a()Lcom/sponsorpay/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/p;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/b;->j(Lcom/sponsorpay/publisher/mbe/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/p;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v2}, Lcom/sponsorpay/publisher/mbe/b;->m(Lcom/sponsorpay/publisher/mbe/b;)Lcom/sponsorpay/publisher/a/b;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sponsorpay/publisher/mbe/p;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v4}, Lcom/sponsorpay/publisher/mbe/b;->n(Lcom/sponsorpay/publisher/mbe/b;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sponsorpay/publisher/mbe/p;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v6}, Lcom/sponsorpay/publisher/mbe/b;->o(Lcom/sponsorpay/publisher/mbe/b;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/sponsorpay/publisher/a;->a(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    const-string/jumbo v1, "SPBrandEngageClient"

    const-string/jumbo v2, "Error in VCS request"

    invoke-static {v1, v2, v0}, Lcom/sponsorpay/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 710
    :cond_0
    const-string/jumbo v0, "SPBrandEngageClient"

    const-string/jumbo v1, "There\'s no VCS listener"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
