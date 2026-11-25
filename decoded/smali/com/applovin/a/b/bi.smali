.class public Lcom/applovin/a/b/bi;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/a/b/bh;


# direct methods
.method public constructor <init>(Lcom/applovin/c/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/applovin/a/b/e;

    invoke-virtual {p1}, Lcom/applovin/a/b/e;->l()Lcom/applovin/a/b/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/bi;->a:Lcom/applovin/a/b/bh;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/bi;->a:Lcom/applovin/a/b/bh;

    const-string/jumbo v1, "ad_imp"

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/bh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/bi;->a:Lcom/applovin/a/b/bh;

    const-string/jumbo v1, "ad_imp_session"

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/bh;->a(Ljava/lang/String;)V

    return-void
.end method
