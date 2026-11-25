.class Lcom/applovin/a/b/bw;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/a/b/e;

.field private final b:Lcom/applovin/c/l;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/a/b/bw;->a:Lcom/applovin/a/b/e;

    const-string/jumbo v0, "main"

    invoke-virtual {p0, v0}, Lcom/applovin/a/b/bw;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/bw;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const-string/jumbo v0, "back"

    invoke-virtual {p0, v0}, Lcom/applovin/a/b/bw;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/bw;->d:Ljava/util/concurrent/ScheduledExecutorService;

    const-string/jumbo v0, "postbacks"

    invoke-virtual {p0, v0}, Lcom/applovin/a/b/bw;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/bw;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/bw;->b:Lcom/applovin/c/l;

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/bw;)Lcom/applovin/a/b/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/bw;->a:Lcom/applovin/a/b/e;

    return-object v0
.end method

.method private static a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, p0, p1, p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p3, p0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method static synthetic b(Lcom/applovin/a/b/bw;)Lcom/applovin/c/l;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/bw;->b:Lcom/applovin/c/l;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    const/4 v0, 0x1

    new-instance v1, Lcom/applovin/a/b/by;

    invoke-direct {v1, p0, p1}, Lcom/applovin/a/b/by;-><init>(Lcom/applovin/a/b/bw;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;J)V

    return-void
.end method

.method a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;J)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No task specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid delay specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/b/bw;->b:Lcom/applovin/c/l;

    iget-object v1, p1, Lcom/applovin/a/b/ba;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Scheduling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/applovin/a/b/ba;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " queue in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/a/b/ca;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/a/b/ca;-><init>(Lcom/applovin/a/b/bw;Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;)V

    sget-object v1, Lcom/applovin/a/b/bx;->a:Lcom/applovin/a/b/bx;

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/applovin/a/b/bw;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, p3, p4, v1}, Lcom/applovin/a/b/bw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v1, Lcom/applovin/a/b/bx;->b:Lcom/applovin/a/b/bx;

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/applovin/a/b/bw;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, p3, p4, v1}, Lcom/applovin/a/b/bw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/applovin/a/b/bx;->c:Lcom/applovin/a/b/bx;

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/applovin/a/b/bw;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, p3, p4, v1}, Lcom/applovin/a/b/bw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0
.end method

.method a(Lcom/applovin/a/b/bv;J)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No task specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/bw;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, p2, p3, v0}, Lcom/applovin/a/b/bw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method
