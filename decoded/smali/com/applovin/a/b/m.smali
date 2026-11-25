.class Lcom/applovin/a/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/applovin/a/b/k;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/k;I)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/m;->b:Lcom/applovin/a/b/k;

    iput p2, p0, Lcom/applovin/a/b/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/m;->b:Lcom/applovin/a/b/k;

    invoke-static {v0}, Lcom/applovin/a/b/k;->a(Lcom/applovin/a/b/k;)Lcom/applovin/c/d;

    move-result-object v0

    iget v1, p0, Lcom/applovin/a/b/m;->a:I

    invoke-interface {v0, v1}, Lcom/applovin/c/d;->failedToReceiveAd(I)V

    return-void
.end method
