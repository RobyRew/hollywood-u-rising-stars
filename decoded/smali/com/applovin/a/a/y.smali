.class Lcom/applovin/a/a/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/a/a;


# direct methods
.method private constructor <init>(Lcom/applovin/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/y;->a:Lcom/applovin/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/a/a/a;Lcom/applovin/a/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/a/y;-><init>(Lcom/applovin/a/a/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/a/y;->a:Lcom/applovin/a/a/a;

    invoke-static {v0}, Lcom/applovin/a/a/a;->d(Lcom/applovin/a/a/a;)Lcom/applovin/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/applovin/a/a/c;

    invoke-direct {v0}, Lcom/applovin/a/a/c;-><init>()V

    iget-object v1, p0, Lcom/applovin/a/a/y;->a:Lcom/applovin/a/a/a;

    invoke-static {v1}, Lcom/applovin/a/a/a;->e(Lcom/applovin/a/a/a;)Lcom/applovin/c/n;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/a/a/y;->a:Lcom/applovin/a/a/a;

    invoke-static {v2}, Lcom/applovin/a/a/a;->f(Lcom/applovin/a/a/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/a/a/c;->a(Lcom/applovin/c/n;Landroid/app/Activity;)Lcom/applovin/adview/e;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/a/t;

    iget-object v2, p0, Lcom/applovin/a/a/y;->a:Lcom/applovin/a/a/a;

    invoke-direct {v1, v2}, Lcom/applovin/a/a/t;-><init>(Lcom/applovin/a/a/a;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/e;->a(Lcom/applovin/c/c;)V

    new-instance v1, Lcom/applovin/a/a/u;

    iget-object v2, p0, Lcom/applovin/a/a/y;->a:Lcom/applovin/a/a/a;

    invoke-direct {v1, v2}, Lcom/applovin/a/a/u;-><init>(Lcom/applovin/a/a/a;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/e;->a(Lcom/applovin/c/j;)V

    new-instance v1, Lcom/applovin/a/a/s;

    iget-object v2, p0, Lcom/applovin/a/a/y;->a:Lcom/applovin/a/a/a;

    invoke-direct {v1, v2}, Lcom/applovin/a/a/s;-><init>(Lcom/applovin/a/a/a;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/e;->a(Lcom/applovin/c/b;)V

    iget-object v1, p0, Lcom/applovin/a/a/y;->a:Lcom/applovin/a/a/a;

    invoke-static {v1}, Lcom/applovin/a/a/a;->d(Lcom/applovin/a/a/a;)Lcom/applovin/c/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/applovin/adview/e;->a(Lcom/applovin/c/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
