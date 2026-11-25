.class Lcom/applovin/a/a/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/a;


# direct methods
.method private constructor <init>(Lcom/applovin/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/aa;->a:Lcom/applovin/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/a/a/a;Lcom/applovin/a/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/a/aa;-><init>(Lcom/applovin/a/a/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/aa;->a:Lcom/applovin/a/a/a;

    invoke-static {v0}, Lcom/applovin/a/a/a;->d(Lcom/applovin/a/a/a;)Lcom/applovin/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/aa;->a:Lcom/applovin/a/a/a;

    invoke-static {v0}, Lcom/applovin/a/a/a;->c(Lcom/applovin/a/a/a;)Lcom/applovin/a/a/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/a/aa;->a:Lcom/applovin/a/a/a;

    invoke-static {v1}, Lcom/applovin/a/a/a;->d(Lcom/applovin/a/a/a;)Lcom/applovin/c/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/applovin/c/a;->b()Lcom/applovin/c/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/a/a/a;->a(Landroid/view/View;Lcom/applovin/c/g;)V

    iget-object v0, p0, Lcom/applovin/a/a/aa;->a:Lcom/applovin/a/a/a;

    invoke-static {v0}, Lcom/applovin/a/a/a;->c(Lcom/applovin/a/a/a;)Lcom/applovin/a/a/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/a/aa;->a:Lcom/applovin/a/a/a;

    invoke-static {v1}, Lcom/applovin/a/a/a;->d(Lcom/applovin/a/a/a;)Lcom/applovin/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/ae;->a(Lcom/applovin/c/a;)V

    :cond_0
    return-void
.end method
