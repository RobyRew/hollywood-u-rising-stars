.class Lcom/applovin/a/b/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/bw;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/a/b/ba;

.field private final d:Lcom/applovin/a/b/bx;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/bw;Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;)V
    .locals 1

    iput-object p1, p0, Lcom/applovin/a/b/ca;->a:Lcom/applovin/a/b/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/a/b/ba;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/ca;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/a/b/ca;->c:Lcom/applovin/a/b/ba;

    iput-object p3, p0, Lcom/applovin/a/b/ca;->d:Lcom/applovin/a/b/bx;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :try_start_0
    invoke-static {}, Lcom/applovin/a/b/cy;->a()V

    iget-object v2, p0, Lcom/applovin/a/b/ca;->a:Lcom/applovin/a/b/bw;

    invoke-static {v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/bw;)Lcom/applovin/a/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/a/b/e;->u()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/applovin/a/b/ca;->a:Lcom/applovin/a/b/bw;

    invoke-static {v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/bw;)Lcom/applovin/a/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/a/b/e;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/a/b/ca;->a:Lcom/applovin/a/b/bw;

    invoke-static {v2}, Lcom/applovin/a/b/bw;->b(Lcom/applovin/a/b/bw;)Lcom/applovin/c/l;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/ca;->b:Ljava/lang/String;

    const-string/jumbo v4, "Task started execution..."

    invoke-interface {v2, v3, v4}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/a/b/ca;->c:Lcom/applovin/a/b/ba;

    invoke-virtual {v2}, Lcom/applovin/a/b/ba;->run()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v8

    iget-object v2, p0, Lcom/applovin/a/b/ca;->c:Lcom/applovin/a/b/ba;

    instance-of v2, v2, Lcom/applovin/a/b/cn;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/a/b/ca;->c:Lcom/applovin/a/b/ba;

    move-object v0, v2

    check-cast v0, Lcom/applovin/a/b/cn;

    move-object v7, v0

    invoke-static {}, Lcom/applovin/a/b/ci;->a()Lcom/applovin/a/b/ci;

    move-result-object v2

    invoke-interface {v7}, Lcom/applovin/a/b/cn;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/applovin/a/b/ca;->a:Lcom/applovin/a/b/bw;

    invoke-static {v6}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/bw;)Lcom/applovin/a/b/e;

    move-result-object v6

    invoke-static {v6}, Lcom/applovin/a/b/db;->a(Lcom/applovin/a/b/e;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7}, Lcom/applovin/a/b/cn;->f()Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/applovin/a/b/ci;->a(Ljava/lang/String;JLjava/lang/String;Z)V

    :cond_0
    iget-object v2, p0, Lcom/applovin/a/b/ca;->a:Lcom/applovin/a/b/bw;

    invoke-static {v2}, Lcom/applovin/a/b/bw;->b(Lcom/applovin/a/b/bw;)Lcom/applovin/c/l;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/ca;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Task executed successfully in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/a/b/ca;->a:Lcom/applovin/a/b/bw;

    invoke-static {v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/bw;)Lcom/applovin/a/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/a/b/e;->l()Lcom/applovin/a/b/bh;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/a/b/ca;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "_count"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/applovin/a/b/bh;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/a/b/ca;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "_time"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/applovin/a/b/bh;->a(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/applovin/a/b/ca;->a:Lcom/applovin/a/b/bw;

    invoke-static {v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/bw;)Lcom/applovin/a/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/a/b/e;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/a/b/ca;->a:Lcom/applovin/a/b/bw;

    invoke-static {v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/bw;)Lcom/applovin/a/b/e;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/applovin/a/b/e;->a(Lcom/applovin/c/o;)V

    :goto_1
    iget-object v2, p0, Lcom/applovin/a/b/ca;->c:Lcom/applovin/a/b/ba;

    invoke-virtual {v2}, Lcom/applovin/a/b/ba;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/applovin/a/b/ca;->a:Lcom/applovin/a/b/bw;

    invoke-static {v3}, Lcom/applovin/a/b/bw;->b(Lcom/applovin/a/b/bw;)Lcom/applovin/c/l;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/a/b/ca;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Task failed execution in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/applovin/a/b/ca;->a:Lcom/applovin/a/b/bw;

    invoke-static {v2}, Lcom/applovin/a/b/bw;->b(Lcom/applovin/a/b/bw;)Lcom/applovin/c/l;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/ca;->b:Ljava/lang/String;

    const-string/jumbo v4, "Task not executed, SDK is disabled"

    invoke-interface {v2, v3, v4}, Lcom/applovin/c/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/applovin/a/b/ca;->a:Lcom/applovin/a/b/bw;

    invoke-static {v2}, Lcom/applovin/a/b/bw;->b(Lcom/applovin/a/b/bw;)Lcom/applovin/c/l;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/ca;->b:Ljava/lang/String;

    const-string/jumbo v4, "Task re-scheduled..."

    invoke-interface {v2, v3, v4}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/a/b/ca;->a:Lcom/applovin/a/b/bw;

    iget-object v3, p0, Lcom/applovin/a/b/ca;->c:Lcom/applovin/a/b/ba;

    iget-object v4, p0, Lcom/applovin/a/b/ca;->d:Lcom/applovin/a/b/bx;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
