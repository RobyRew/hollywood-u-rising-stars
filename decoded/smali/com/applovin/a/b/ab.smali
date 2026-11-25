.class Lcom/applovin/a/b/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/aa;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/ab;->a:Lcom/applovin/a/b/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/applovin/a/b/ab;->a:Lcom/applovin/a/b/aa;

    iget-object v0, v0, Lcom/applovin/a/b/aa;->a:Lcom/applovin/a/b/z;

    invoke-static {v0}, Lcom/applovin/a/b/z;->d(Lcom/applovin/a/b/z;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/ac;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/ac;-><init>(Lcom/applovin/a/b/ab;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
