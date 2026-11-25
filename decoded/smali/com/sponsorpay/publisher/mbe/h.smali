.class final Lcom/sponsorpay/publisher/mbe/h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/b;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/b;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/h;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 195
    const-string/jumbo v1, "noConnectivity"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 197
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/h;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->a(Lcom/sponsorpay/publisher/mbe/b;)Lcom/sponsorpay/publisher/mbe/e;

    move-result-object v0

    sget-object v1, Lcom/sponsorpay/publisher/mbe/e;->d:Lcom/sponsorpay/publisher/mbe/e;

    if-ne v0, v1, :cond_1

    .line 199
    const-string/jumbo v0, "SPBrandEngageClient"

    const-string/jumbo v1, "Connection has been lost"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/h;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->b(Lcom/sponsorpay/publisher/mbe/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sponsorpay/publisher/mbe/i;

    invoke-direct {v1, p0}, Lcom/sponsorpay/publisher/mbe/i;-><init>(Lcom/sponsorpay/publisher/mbe/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    :cond_1
    return-void
.end method
