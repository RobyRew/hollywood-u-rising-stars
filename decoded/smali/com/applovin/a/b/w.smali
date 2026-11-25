.class Lcom/applovin/a/b/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/c/a;

.field final synthetic b:I

.field final synthetic c:Lcom/applovin/a/b/n;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/n;Lcom/applovin/c/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/w;->c:Lcom/applovin/a/b/n;

    iput-object p2, p0, Lcom/applovin/a/b/w;->a:Lcom/applovin/c/a;

    iput p3, p0, Lcom/applovin/a/b/w;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/b/w;->c:Lcom/applovin/a/b/n;

    invoke-static {v0}, Lcom/applovin/a/b/n;->a(Lcom/applovin/a/b/n;)Lcom/applovin/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/w;->a:Lcom/applovin/c/a;

    iget v2, p0, Lcom/applovin/a/b/w;->b:I

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/e;->validationRequestFailed(Lcom/applovin/c/a;I)V

    return-void
.end method
