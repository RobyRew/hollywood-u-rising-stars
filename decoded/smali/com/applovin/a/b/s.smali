.class Lcom/applovin/a/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/c/a;

.field final synthetic b:D

.field final synthetic c:Z

.field final synthetic d:Lcom/applovin/a/b/n;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/n;Lcom/applovin/c/a;DZ)V
    .locals 1

    iput-object p1, p0, Lcom/applovin/a/b/s;->d:Lcom/applovin/a/b/n;

    iput-object p2, p0, Lcom/applovin/a/b/s;->a:Lcom/applovin/c/a;

    iput-wide p3, p0, Lcom/applovin/a/b/s;->b:D

    iput-boolean p5, p0, Lcom/applovin/a/b/s;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/applovin/a/b/s;->d:Lcom/applovin/a/b/n;

    invoke-static {v0}, Lcom/applovin/a/b/n;->d(Lcom/applovin/a/b/n;)Lcom/applovin/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/s;->a:Lcom/applovin/c/a;

    iget-wide v2, p0, Lcom/applovin/a/b/s;->b:D

    iget-boolean v4, p0, Lcom/applovin/a/b/s;->c:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/applovin/c/j;->videoPlaybackEnded(Lcom/applovin/c/a;DZ)V

    return-void
.end method
