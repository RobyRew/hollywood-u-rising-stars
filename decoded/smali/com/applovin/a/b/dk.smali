.class public Lcom/applovin/a/b/dk;
.super Ljava/lang/Object;


# static fields
.field private static k:Ljava/lang/String;


# instance fields
.field private final a:Lcom/applovin/a/b/e;

.field private final b:Lcom/applovin/a/b/d;

.field private c:Lcom/applovin/a/b/a;

.field private d:Ljava/lang/ref/SoftReference;

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Object;

.field private volatile g:Ljava/lang/String;

.field private h:Lcom/applovin/a/b/cl;

.field private volatile i:Z

.field private j:Ljava/lang/ref/SoftReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/applovin/a/b/dk;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/c/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/a/b/dk;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/a/b/dk;->i:Z

    move-object v0, p1

    check-cast v0, Lcom/applovin/a/b/e;

    iput-object v0, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    invoke-virtual {p1}, Lcom/applovin/c/n;->d()Lcom/applovin/c/f;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/b/d;

    iput-object v0, p0, Lcom/applovin/a/b/dk;->b:Lcom/applovin/a/b/d;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/a/b/dk;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/dk;Lcom/applovin/a/b/a;)Lcom/applovin/a/b/a;
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/dk;->c:Lcom/applovin/a/b/a;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/applovin/a/b/dk;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/dk;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/a/b/dk;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/applovin/a/b/dk;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/a/b/dk;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/a/b/dk;)Lcom/applovin/a/b/cl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/dk;->h:Lcom/applovin/a/b/cl;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/applovin/a/b/dk;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/a/b/dk;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/dk;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/a/b/dk;)Lcom/applovin/a/b/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/dk;->d:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/dk;->d:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/c/d;

    if-eqz v0, :cond_0

    const/16 v1, -0x12c

    invoke-interface {v0, v1}, Lcom/applovin/c/d;->failedToReceiveAd(I)V

    :cond_0
    return-void
.end method

.method private e()Lcom/applovin/c/e;
    .locals 1

    new-instance v0, Lcom/applovin/a/b/j;

    invoke-direct {v0, p0}, Lcom/applovin/a/b/j;-><init>(Lcom/applovin/a/b/dk;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/applovin/c/e;Lcom/applovin/c/j;Lcom/applovin/c/c;Lcom/applovin/c/b;)V
    .locals 6

    if-nez p2, :cond_3

    invoke-direct {p0}, Lcom/applovin/a/b/dk;->e()Lcom/applovin/c/e;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/applovin/a/b/dk;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/a/b/dk;->c:Lcom/applovin/a/b/a;

    invoke-virtual {v0}, Lcom/applovin/a/b/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/c/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->m()Lcom/applovin/a/b/dj;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/dk;->c:Lcom/applovin/a/b/a;

    invoke-virtual {v1}, Lcom/applovin/a/b/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/a/b/dj;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->ah:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/applovin/a/b/z;

    iget-object v1, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    invoke-direct {v0, v1, p0}, Lcom/applovin/a/b/z;-><init>(Lcom/applovin/a/b/e;Lcom/applovin/a/b/dk;)V

    invoke-virtual {v0, p1}, Lcom/applovin/a/b/z;->a(Landroid/app/Activity;)V

    invoke-virtual {v0, p4}, Lcom/applovin/a/b/z;->a(Lcom/applovin/c/c;)V

    invoke-virtual {v0, p5}, Lcom/applovin/a/b/z;->a(Lcom/applovin/c/b;)V

    invoke-virtual {v0, p3}, Lcom/applovin/a/b/z;->a(Lcom/applovin/c/j;)V

    invoke-virtual {v0, v2}, Lcom/applovin/a/b/z;->a(Lcom/applovin/c/e;)V

    invoke-virtual {v0}, Lcom/applovin/a/b/z;->a()V

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/a/b/dk;->b(Landroid/app/Activity;Lcom/applovin/c/e;Lcom/applovin/c/j;Lcom/applovin/c/c;Lcom/applovin/c/b;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "IncentivizedAdController"

    const-string/jumbo v2, "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/a/b/dk;->d()V

    goto :goto_1

    :cond_3
    move-object v2, p2

    goto :goto_0
.end method

.method a(Lcom/applovin/c/a;Lcom/applovin/c/e;)V
    .locals 3

    new-instance v0, Lcom/applovin/a/b/cl;

    iget-object v1, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    invoke-direct {v0, v1, p1, p2}, Lcom/applovin/a/b/cl;-><init>(Lcom/applovin/a/b/e;Lcom/applovin/c/a;Lcom/applovin/c/e;)V

    iput-object v0, p0, Lcom/applovin/a/b/dk;->h:Lcom/applovin/a/b/cl;

    iget-object v0, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->k()Lcom/applovin/a/b/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/dk;->h:Lcom/applovin/a/b/cl;

    sget-object v2, Lcom/applovin/a/b/bx;->b:Lcom/applovin/a/b/bx;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;)V

    return-void
.end method

.method public a(Lcom/applovin/c/d;)V
    .locals 4

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/a/b/dk;->d:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lcom/applovin/a/b/dk;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "IncentivizedAdController"

    const-string/jumbo v2, "Attempted to call preloadAndNotify: while an ad was already loaded or currently being played. Do not call preloadAndNotify: again until the last ad has been closed (adHidden)."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/dk;->c:Lcom/applovin/a/b/a;

    invoke-interface {p1, v0}, Lcom/applovin/c/d;->adReceived(Lcom/applovin/c/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/b/dk;->b:Lcom/applovin/a/b/d;

    sget-object v1, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    sget-object v2, Lcom/applovin/c/h;->b:Lcom/applovin/c/h;

    new-instance v3, Lcom/applovin/a/b/k;

    invoke-direct {v3, p0, p1}, Lcom/applovin/a/b/k;-><init>(Lcom/applovin/a/b/dk;Lcom/applovin/c/d;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/a/b/d;->a(Lcom/applovin/c/g;Lcom/applovin/c/h;Lcom/applovin/c/d;)V

    goto :goto_0
.end method

.method a(Lcom/applovin/c/e;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/dk;->c:Lcom/applovin/a/b/a;

    invoke-interface {p1, v0}, Lcom/applovin/c/e;->userDeclinedToViewAd(Lcom/applovin/c/a;)V

    return-void
.end method

.method a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->ai:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/applovin/a/b/x;

    iget-object v1, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    invoke-direct {v0, v1, p2, p1}, Lcom/applovin/a/b/x;-><init>(Lcom/applovin/a/b/e;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/applovin/a/b/x;->a()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/dk;->c:Lcom/applovin/a/b/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/app/Activity;Lcom/applovin/c/e;Lcom/applovin/c/j;Lcom/applovin/c/c;Lcom/applovin/c/b;)V
    .locals 10

    invoke-virtual {p0}, Lcom/applovin/a/b/dk;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/applovin/a/b/dk;->c:Lcom/applovin/a/b/a;

    invoke-virtual {v8}, Lcom/applovin/a/b/a;->c()Lcom/applovin/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/c/h;->b:Lcom/applovin/c/h;

    invoke-virtual {v0, v1}, Lcom/applovin/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    invoke-static {v0, p1}, Lcom/applovin/adview/d;->a(Lcom/applovin/c/n;Landroid/app/Activity;)Lcom/applovin/adview/e;

    move-result-object v9

    new-instance v0, Lcom/applovin/a/b/n;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/applovin/a/b/n;-><init>(Lcom/applovin/a/b/dk;Landroid/app/Activity;Lcom/applovin/c/e;Lcom/applovin/c/j;Lcom/applovin/c/c;Lcom/applovin/c/b;Lcom/applovin/a/b/j;)V

    invoke-interface {v9, v0}, Lcom/applovin/adview/e;->a(Lcom/applovin/c/c;)V

    invoke-interface {v9, v0}, Lcom/applovin/adview/e;->a(Lcom/applovin/c/j;)V

    invoke-interface {v9, v0}, Lcom/applovin/adview/e;->a(Lcom/applovin/c/b;)V

    invoke-interface {v9, v8}, Lcom/applovin/adview/e;->a(Lcom/applovin/c/a;)V

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/applovin/a/b/dk;->j:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0, v8, v0}, Lcom/applovin/a/b/dk;->a(Lcom/applovin/c/a;Lcom/applovin/c/e;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "IncentivizedAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted to render an ad of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/dk;->c:Lcom/applovin/a/b/a;

    invoke-virtual {v3}, Lcom/applovin/a/b/a;->c()Lcom/applovin/c/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in an Incentivized Ad interstitial."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/dk;->c:Lcom/applovin/a/b/a;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v2, v3, v1}, Lcom/applovin/c/j;->videoPlaybackEnded(Lcom/applovin/c/a;DZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/b/dk;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "IncentivizedAdController"

    const-string/jumbo v2, "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/a/b/dk;->d()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/applovin/a/b/dk;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/applovin/a/b/dk;->g:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/applovin/a/b/dk;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/a/b/dk;->g:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
