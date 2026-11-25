.class Lcom/applovin/a/b/cs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/d;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/d;

.field private final b:Lcom/applovin/a/b/ct;


# direct methods
.method private constructor <init>(Lcom/applovin/a/b/d;Lcom/applovin/a/b/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/cs;->a:Lcom/applovin/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/a/b/d;Lcom/applovin/a/b/ct;Lcom/applovin/a/b/cp;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/a/b/cs;-><init>(Lcom/applovin/a/b/d;Lcom/applovin/a/b/ct;)V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/c/a;)V
    .locals 8

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    iget-object v1, v0, Lcom/applovin/a/b/ct;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/a/b/cs;->a:Lcom/applovin/a/b/d;

    iget-object v2, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    iget-object v2, v2, Lcom/applovin/a/b/ct;->a:Lcom/applovin/c/g;

    invoke-static {v0, v2}, Lcom/applovin/a/b/d;->a(Lcom/applovin/a/b/d;Lcom/applovin/c/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/a/b/cs;->a:Lcom/applovin/a/b/d;

    iget-object v2, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    iget-object v2, v2, Lcom/applovin/a/b/ct;->a:Lcom/applovin/c/g;

    invoke-static {v0, v2}, Lcom/applovin/a/b/d;->b(Lcom/applovin/a/b/d;Lcom/applovin/c/g;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/applovin/a/b/ct;->d:J

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    iput-object p1, v0, Lcom/applovin/a/b/ct;->c:Lcom/applovin/c/a;

    :goto_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    invoke-static {v2}, Lcom/applovin/a/b/ct;->a(Lcom/applovin/a/b/ct;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    invoke-static {v2}, Lcom/applovin/a/b/ct;->a(Lcom/applovin/a/b/ct;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    invoke-static {v3}, Lcom/applovin/a/b/ct;->b(Lcom/applovin/a/b/ct;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/applovin/a/b/ct;->e:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/applovin/a/b/cs;->a:Lcom/applovin/a/b/d;

    iget-object v3, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    iget-object v3, v3, Lcom/applovin/a/b/ct;->a:Lcom/applovin/c/g;

    invoke-static {v1, v3}, Lcom/applovin/a/b/d;->c(Lcom/applovin/a/b/d;Lcom/applovin/c/g;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/c/d;

    :try_start_1
    invoke-interface {v0, p1}, Lcom/applovin/c/d;->adReceived(Lcom/applovin/c/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/applovin/a/b/cs;->a:Lcom/applovin/a/b/d;

    invoke-static {v3}, Lcom/applovin/a/b/d;->b(Lcom/applovin/a/b/d;)Lcom/applovin/c/l;

    move-result-object v3

    const-string/jumbo v4, "AppLovinAdService"

    const-string/jumbo v5, "Unable to notify listener about a newly loaded ad"

    invoke-interface {v3, v4, v5, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lcom/applovin/a/b/ct;->d:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/applovin/a/b/ct;->c:Lcom/applovin/c/a;

    iget-object v0, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/applovin/a/b/ct;->d:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/c/i;

    :try_start_4
    invoke-interface {v0, p1}, Lcom/applovin/c/i;->a(Lcom/applovin/c/a;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/applovin/a/b/cs;->a:Lcom/applovin/a/b/d;

    invoke-static {v2}, Lcom/applovin/a/b/d;->b(Lcom/applovin/a/b/d;)Lcom/applovin/c/l;

    move-result-object v2

    const-string/jumbo v3, "AppLovinAdService"

    const-string/jumbo v4, "Unable to notify listener about an updated loaded ad"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    iget-object v1, v0, Lcom/applovin/a/b/ct;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    invoke-static {v2}, Lcom/applovin/a/b/ct;->a(Lcom/applovin/a/b/ct;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    invoke-static {v2}, Lcom/applovin/a/b/ct;->a(Lcom/applovin/a/b/ct;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    iget-object v2, p0, Lcom/applovin/a/b/cs;->b:Lcom/applovin/a/b/ct;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/applovin/a/b/ct;->e:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/c/d;

    :try_start_1
    invoke-interface {v0, p1}, Lcom/applovin/c/d;->failedToReceiveAd(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/applovin/a/b/cs;->a:Lcom/applovin/a/b/d;

    invoke-static {v2}, Lcom/applovin/a/b/d;->b(Lcom/applovin/a/b/d;)Lcom/applovin/c/l;

    move-result-object v2

    const-string/jumbo v3, "AppLovinAdService"

    const-string/jumbo v4, "Unable to notify listener about ad load failure"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    return-void
.end method
