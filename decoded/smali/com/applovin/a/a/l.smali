.class Lcom/applovin/a/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/applovin/a/a/j;


# direct methods
.method constructor <init>(Lcom/applovin/a/a/j;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/l;->c:Lcom/applovin/a/a/j;

    iput-boolean p2, p0, Lcom/applovin/a/a/l;->a:Z

    iput-boolean p3, p0, Lcom/applovin/a/a/l;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/a/a/l;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/a/a/l;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/l;->c:Lcom/applovin/a/a/j;

    invoke-static {v0}, Lcom/applovin/a/a/j;->a(Lcom/applovin/a/a/j;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/a/l;->c:Lcom/applovin/a/a/j;

    invoke-static {v0}, Lcom/applovin/a/a/j;->b(Lcom/applovin/a/a/j;)V

    goto :goto_0
.end method
