.class public Lb/a/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile a:Lb/a/a/a/f;

.field static final b:Lb/a/a/a/t;


# instance fields
.field final c:Lb/a/a/a/t;

.field final d:Z

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a/q;",
            ">;",
            "Lb/a/a/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Landroid/os/Handler;

.field private final i:Lb/a/a/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/l",
            "<",
            "Lb/a/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lb/a/a/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/l",
            "<*>;"
        }
    .end annotation
.end field

.field private final k:Lb/a/a/a/a/b/z;

.field private l:Lb/a/a/a/a;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lb/a/a/a/e;

    invoke-direct {v0}, Lb/a/a/a/e;-><init>()V

    sput-object v0, Lb/a/a/a/f;->b:Lb/a/a/a/t;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lb/a/a/a/a/c/w;Landroid/os/Handler;Lb/a/a/a/t;ZLb/a/a/a/l;Lb/a/a/a/a/b/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a/q;",
            ">;",
            "Lb/a/a/a/q;",
            ">;",
            "Lb/a/a/a/a/c/w;",
            "Landroid/os/Handler;",
            "Lb/a/a/a/t;",
            "Z",
            "Lb/a/a/a/l;",
            "Lb/a/a/a/a/b/z;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/f;->e:Landroid/content/Context;

    .line 285
    iput-object p2, p0, Lb/a/a/a/f;->f:Ljava/util/Map;

    .line 286
    iput-object p3, p0, Lb/a/a/a/f;->g:Ljava/util/concurrent/ExecutorService;

    .line 287
    iput-object p4, p0, Lb/a/a/a/f;->h:Landroid/os/Handler;

    .line 288
    iput-object p5, p0, Lb/a/a/a/f;->c:Lb/a/a/a/t;

    .line 289
    iput-boolean p6, p0, Lb/a/a/a/f;->d:Z

    .line 290
    iput-object p7, p0, Lb/a/a/a/f;->i:Lb/a/a/a/l;

    .line 291
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/a/a/a/f;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 292
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/a/a/f;->a(I)Lb/a/a/a/l;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/f;->j:Lb/a/a/a/l;

    .line 293
    iput-object p8, p0, Lb/a/a/a/f;->k:Lb/a/a/a/a/b/z;

    .line 294
    invoke-direct {p0, p1}, Lb/a/a/a/f;->c(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/f;->a(Landroid/app/Activity;)Lb/a/a/a/f;

    .line 295
    return-void
.end method

.method static a()Lb/a/a/a/f;
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    return-object v0
.end method

.method public static a(Lb/a/a/a/f;)Lb/a/a/a/f;
    .locals 2

    .prologue
    .line 329
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    if-nez v0, :cond_1

    .line 330
    const-class v1, Lb/a/a/a/f;

    monitor-enter v1

    .line 331
    :try_start_0
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    if-nez v0, :cond_0

    .line 332
    invoke-static {p0}, Lb/a/a/a/f;->d(Lb/a/a/a/f;)V

    .line 334
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_1
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    return-object v0

    .line 334
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/Class;)Lb/a/a/a/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb/a/a/a/q;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 524
    invoke-static {}, Lb/a/a/a/f;->a()Lb/a/a/a/f;

    move-result-object v0

    iget-object v0, v0, Lb/a/a/a/f;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/q;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lb/a/a/a/f;->b(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a/q;",
            ">;",
            "Lb/a/a/a/q;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Lb/a/a/a/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/q;

    .line 581
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    instance-of v2, v0, Lb/a/a/a/r;

    if-eqz v2, :cond_0

    .line 584
    check-cast v0, Lb/a/a/a/r;

    invoke-interface {v0}, Lb/a/a/a/r;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lb/a/a/a/f;->a(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    .line 587
    :cond_1
    return-void
.end method

.method private static b(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lb/a/a/a/q;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a/q;",
            ">;",
            "Lb/a/a/a/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 572
    invoke-static {v0, p0}, Lb/a/a/a/f;->a(Ljava/util/Map;Ljava/util/Collection;)V

    .line 574
    return-object v0
.end method

.method static synthetic b(Lb/a/a/a/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lb/a/a/a/f;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 488
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 489
    check-cast p1, Landroid/app/Activity;

    .line 491
    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lb/a/a/a/f;)Lb/a/a/a/l;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lb/a/a/a/f;->i:Lb/a/a/a/l;

    return-object v0
.end method

.method private static d(Lb/a/a/a/f;)V
    .locals 0

    .prologue
    .line 340
    sput-object p0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    .line 341
    invoke-direct {p0}, Lb/a/a/a/f;->j()V

    .line 342
    return-void
.end method

.method public static h()Lb/a/a/a/t;
    .locals 1

    .prologue
    .line 531
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    if-nez v0, :cond_0

    .line 532
    sget-object v0, Lb/a/a/a/f;->b:Lb/a/a/a/t;

    .line 534
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    iget-object v0, v0, Lb/a/a/a/f;->c:Lb/a/a/a/t;

    goto :goto_0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 541
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    if-nez v0, :cond_0

    .line 542
    const/4 v0, 0x0

    .line 544
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    iget-boolean v0, v0, Lb/a/a/a/f;->d:Z

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 364
    new-instance v0, Lb/a/a/a/a;

    iget-object v1, p0, Lb/a/a/a/f;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/a/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/a/a/f;->l:Lb/a/a/a/a;

    .line 365
    iget-object v0, p0, Lb/a/a/a/f;->l:Lb/a/a/a/a;

    new-instance v1, Lb/a/a/a/g;

    invoke-direct {v1, p0}, Lb/a/a/a/g;-><init>(Lb/a/a/a/f;)V

    invoke-virtual {v0, v1}, Lb/a/a/a/a;->a(Lb/a/a/a/d;)Z

    .line 383
    iget-object v0, p0, Lb/a/a/a/f;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lb/a/a/a/f;->a(Landroid/content/Context;)V

    .line 384
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lb/a/a/a/f;
    .locals 1

    .prologue
    .line 348
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/f;->m:Ljava/lang/ref/WeakReference;

    .line 349
    return-object p0
.end method

.method a(I)Lb/a/a/a/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lb/a/a/a/l",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v0, Lb/a/a/a/h;

    invoke-direct {v0, p0, p1}, Lb/a/a/a/h;-><init>(Lb/a/a/a/f;I)V

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lb/a/a/a/f;->b(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Lb/a/a/a/f;->g()Ljava/util/Collection;

    move-result-object v1

    .line 407
    new-instance v2, Lb/a/a/a/u;

    invoke-direct {v2, v0, v1}, Lb/a/a/a/u;-><init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V

    .line 408
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 409
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 413
    sget-object v0, Lb/a/a/a/l;->d:Lb/a/a/a/l;

    iget-object v1, p0, Lb/a/a/a/f;->k:Lb/a/a/a/a/b/z;

    invoke-virtual {v2, p1, p0, v0, v1}, Lb/a/a/a/u;->a(Landroid/content/Context;Lb/a/a/a/f;Lb/a/a/a/l;Lb/a/a/a/a/b/z;)V

    .line 414
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/q;

    .line 415
    iget-object v4, p0, Lb/a/a/a/f;->j:Lb/a/a/a/l;

    iget-object v5, p0, Lb/a/a/a/f;->k:Lb/a/a/a/a/b/z;

    invoke-virtual {v0, p1, p0, v4, v5}, Lb/a/a/a/q;->a(Landroid/content/Context;Lb/a/a/a/f;Lb/a/a/a/l;Lb/a/a/a/a/b/z;)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {v2}, Lb/a/a/a/u;->r()V

    .line 424
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4}, Lb/a/a/a/t;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Initializing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/a/a/a/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/a/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], with the following kits:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, v0

    .line 434
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/q;

    .line 435
    iget-object v4, v0, Lb/a/a/a/q;->f:Lb/a/a/a/p;

    iget-object v5, v2, Lb/a/a/a/u;->f:Lb/a/a/a/p;

    invoke-virtual {v4, v5}, Lb/a/a/a/p;->a(Lb/a/a/a/a/c/y;)V

    .line 437
    iget-object v4, p0, Lb/a/a/a/f;->f:Ljava/util/Map;

    invoke-virtual {p0, v4, v0}, Lb/a/a/a/f;->a(Ljava/util/Map;Lb/a/a/a/q;)V

    .line 439
    invoke-virtual {v0}, Lb/a/a/a/q;->r()V

    .line 441
    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {v0}, Lb/a/a/a/q;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lb/a/a/a/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "]\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 431
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 449
    :cond_3
    if-eqz v1, :cond_4

    .line 450
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v2, "Fabric"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_4
    return-void
.end method

.method a(Ljava/util/Map;Lb/a/a/a/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a/q;",
            ">;",
            "Lb/a/a/a/q;",
            ">;",
            "Lb/a/a/a/q;",
            ")V"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p2, Lb/a/a/a/q;->j:Lb/a/a/a/a/c/n;

    .line 461
    if-eqz v0, :cond_4

    .line 462
    invoke-interface {v0}, Lb/a/a/a/a/c/n;->a()[Ljava/lang/Class;

    move-result-object v2

    .line 463
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 464
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/q;

    .line 467
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 468
    iget-object v6, p2, Lb/a/a/a/q;->f:Lb/a/a/a/p;

    iget-object v0, v0, Lb/a/a/a/q;->f:Lb/a/a/a/p;

    invoke-virtual {v6, v0}, Lb/a/a/a/p;->a(Lb/a/a/a/a/c/y;)V

    goto :goto_1

    .line 474
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/q;

    .line 475
    if-nez v0, :cond_2

    .line 476
    new-instance v0, Lb/a/a/a/a/c/z;

    const-string/jumbo v1, "Referenced Kit was null, does the kit exist?"

    invoke-direct {v0, v1}, Lb/a/a/a/a/c/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_2
    iget-object v5, p2, Lb/a/a/a/q;->f:Lb/a/a/a/p;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/q;

    iget-object v0, v0, Lb/a/a/a/q;->f:Lb/a/a/a/p;

    invoke-virtual {v5, v0}, Lb/a/a/a/p;->a(Lb/a/a/a/a/c/y;)V

    .line 463
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 485
    :cond_4
    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lb/a/a/a/f;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lb/a/a/a/f;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 360
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/a/a/s;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 613
    new-instance v0, Lb/a/a/a/k;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/k;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lb/a/a/a/f;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 616
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    const-string/jumbo v0, "1.3.15.167"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const-string/jumbo v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public e()Lb/a/a/a/a;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lb/a/a/a/f;->l:Lb/a/a/a/a;

    return-object v0
.end method

.method public f()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lb/a/a/a/f;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/a/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lb/a/a/a/f;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
