.class Lcom/applovin/a/b/ac;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/ab;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/ac;->a:Lcom/applovin/a/b/ab;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/ac;->a:Lcom/applovin/a/b/ab;

    iget-object v0, v0, Lcom/applovin/a/b/ab;->a:Lcom/applovin/a/b/aa;

    iget-object v0, v0, Lcom/applovin/a/b/aa;->a:Lcom/applovin/a/b/z;

    invoke-static {v0}, Lcom/applovin/a/b/z;->a(Lcom/applovin/a/b/z;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/ad;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/ad;-><init>(Lcom/applovin/a/b/ac;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
