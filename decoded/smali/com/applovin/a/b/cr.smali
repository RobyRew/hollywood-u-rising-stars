.class Lcom/applovin/a/b/cr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/cp;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/cr;->a:Lcom/applovin/a/b/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/cr;->a:Lcom/applovin/a/b/cp;

    iget-object v0, v0, Lcom/applovin/a/b/cp;->a:Lcom/applovin/a/a/a;

    invoke-virtual {v0}, Lcom/applovin/a/a/a;->h()V

    return-void
.end method
