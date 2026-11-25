.class Lcom/applovin/a/b/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/ac;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/ad;->a:Lcom/applovin/a/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/ad;->a:Lcom/applovin/a/b/ac;

    iget-object v0, v0, Lcom/applovin/a/b/ac;->a:Lcom/applovin/a/b/ab;

    iget-object v0, v0, Lcom/applovin/a/b/ab;->a:Lcom/applovin/a/b/aa;

    iget-object v0, v0, Lcom/applovin/a/b/aa;->a:Lcom/applovin/a/b/z;

    invoke-static {v0}, Lcom/applovin/a/b/z;->c(Lcom/applovin/a/b/z;)V

    return-void
.end method
