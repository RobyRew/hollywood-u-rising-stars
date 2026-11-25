.class Lcom/applovin/a/b/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/by;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/by;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/bz;->a:Lcom/applovin/a/b/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/b/bz;->a:Lcom/applovin/a/b/by;

    iget-object v0, v0, Lcom/applovin/a/b/by;->a:Lcom/applovin/a/b/bw;

    invoke-static {v0}, Lcom/applovin/a/b/bw;->b(Lcom/applovin/a/b/bw;)Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "TaskManager"

    const-string/jumbo v2, "Caught unhandled exception"

    invoke-interface {v0, v1, v2, p2}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
