.class Lcom/applovin/a/b/cu;
.super Lcom/applovin/a/b/ba;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/d;

.field private final b:Lcom/applovin/c/g;


# direct methods
.method public constructor <init>(Lcom/applovin/a/b/d;Lcom/applovin/c/g;)V
    .locals 2

    iput-object p1, p0, Lcom/applovin/a/b/cu;->a:Lcom/applovin/a/b/d;

    const-string/jumbo v0, "UpdateAdTask"

    invoke-static {p1}, Lcom/applovin/a/b/d;->c(Lcom/applovin/a/b/d;)Lcom/applovin/a/b/e;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/applovin/a/b/ba;-><init>(Ljava/lang/String;Lcom/applovin/a/b/e;)V

    iput-object p2, p0, Lcom/applovin/a/b/cu;->b:Lcom/applovin/c/g;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/applovin/a/b/cu;->a:Lcom/applovin/a/b/d;

    invoke-static {v0}, Lcom/applovin/a/b/d;->d(Lcom/applovin/a/b/d;)Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v3, p0, Lcom/applovin/a/b/cu;->b:Lcom/applovin/c/g;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/b/ct;

    iget-object v4, v0, Lcom/applovin/a/b/ct;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/applovin/a/b/cu;->a:Lcom/applovin/a/b/d;

    iget-object v5, p0, Lcom/applovin/a/b/cu;->b:Lcom/applovin/c/g;

    invoke-static {v3, v5}, Lcom/applovin/a/b/d;->a(Lcom/applovin/a/b/d;Lcom/applovin/c/g;)Z

    move-result v5

    iget-object v3, p0, Lcom/applovin/a/b/cu;->a:Lcom/applovin/a/b/d;

    invoke-static {v3}, Lcom/applovin/a/b/d;->e(Lcom/applovin/a/b/d;)Z

    move-result v6

    invoke-static {v0}, Lcom/applovin/a/b/ct;->b(Lcom/applovin/a/b/ct;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/applovin/a/b/ct;->d:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    :goto_1
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    iget-boolean v1, v0, Lcom/applovin/a/b/ct;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/applovin/a/b/ct;->e:Z

    iget-object v1, p0, Lcom/applovin/a/b/cu;->a:Lcom/applovin/a/b/d;

    iget-object v2, p0, Lcom/applovin/a/b/cu;->b:Lcom/applovin/c/g;

    sget-object v3, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    new-instance v5, Lcom/applovin/a/b/cs;

    iget-object v6, p0, Lcom/applovin/a/b/cu;->a:Lcom/applovin/a/b/d;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v0, v7}, Lcom/applovin/a/b/cs;-><init>(Lcom/applovin/a/b/d;Lcom/applovin/a/b/ct;Lcom/applovin/a/b/cp;)V

    invoke-static {v1, v2, v3, v5}, Lcom/applovin/a/b/d;->a(Lcom/applovin/a/b/d;Lcom/applovin/c/g;Lcom/applovin/c/h;Lcom/applovin/c/d;)V

    :cond_0
    monitor-exit v4

    return-void

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
