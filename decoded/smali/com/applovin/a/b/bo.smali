.class public Lcom/applovin/a/b/bo;
.super Lcom/applovin/a/b/ba;


# instance fields
.field private final a:Lcom/applovin/a/b/bp;


# direct methods
.method public constructor <init>(Lcom/applovin/a/b/e;Lcom/applovin/a/b/bp;)V
    .locals 1

    const-string/jumbo v0, "TaskCollectAdvertisingId"

    invoke-direct {p0, v0, p1}, Lcom/applovin/a/b/ba;-><init>(Ljava/lang/String;Lcom/applovin/a/b/e;)V

    iput-object p2, p0, Lcom/applovin/a/b/bo;->a:Lcom/applovin/a/b/bp;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/bo;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->t()Lcom/applovin/a/b/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/dc;->c()Lcom/applovin/a/b/dd;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/bo;->a:Lcom/applovin/a/b/bp;

    invoke-interface {v1, v0}, Lcom/applovin/a/b/bp;->a(Lcom/applovin/a/b/dd;)V

    return-void
.end method
