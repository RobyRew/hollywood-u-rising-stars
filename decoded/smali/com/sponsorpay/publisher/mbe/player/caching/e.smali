.class final Lcom/sponsorpay/publisher/mbe/player/caching/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sponsorpay/publisher/mbe/player/caching/q;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 381
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    .line 382
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 378
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Landroid/util/SparseArray;

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c:I

    .line 383
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 487
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Removing videos to cache, entry num "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c:I

    .line 491
    return-void
.end method

.method private a()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 516
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->h(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/b;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_5

    .line 518
    const-string/jumbo v1, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Queuing video for network "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b()Lcom/sponsorpay/publisher/mbe/player/caching/a;

    move-result-object v3

    .line 521
    invoke-virtual {v3}, Lcom/sponsorpay/publisher/mbe/player/caching/a;->c()I

    move-result v5

    .line 522
    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c()Lcom/sponsorpay/publisher/mbe/player/caching/m;

    move-result-object v6

    .line 523
    invoke-virtual {v3, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/a;->a(Lcom/sponsorpay/publisher/mbe/player/caching/b;)Lcom/sponsorpay/publisher/mbe/player/caching/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/k;->a()I

    move-result v7

    move v1, v2

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    if-ge v1, v7, :cond_5

    .line 525
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/q;

    .line 526
    if-eqz v0, :cond_4

    .line 528
    const-string/jumbo v3, "SPCacheVideoDownloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Queuing video entry for ad_id "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/q;->a()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " and URL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/q;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/c;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v4

    .line 531
    :goto_1
    invoke-virtual {v6, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->a(Lcom/sponsorpay/publisher/mbe/player/caching/q;)Lcom/sponsorpay/publisher/mbe/player/caching/c;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->c()I

    move-result v8

    .line 535
    if-eqz v8, :cond_0

    if-ne v8, v4, :cond_3

    .line 536
    :cond_0
    if-eqz v3, :cond_1

    .line 539
    invoke-virtual {v6}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    sub-int/2addr v2, v5

    .line 541
    invoke-virtual {v6, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->b(I)V

    .line 544
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->a(I)V

    .line 545
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v2}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/g;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/g;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 547
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 548
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 557
    :goto_2
    return v4

    :cond_2
    move v3, v2

    .line 529
    goto :goto_1

    .line 551
    :cond_3
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "This cache entry will not be queued for download. Current state: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 556
    :cond_5
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    const-string/jumbo v1, "No videos to be queued for download at the moment"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 557
    goto :goto_2
.end method

.method private b()V
    .locals 7

    .prologue
    .line 567
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    const-string/jumbo v1, "Checking videos already available locally..."

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c()Lcom/sponsorpay/publisher/mbe/player/caching/m;

    move-result-object v2

    .line 569
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/q;

    .line 571
    if-eqz v0, :cond_0

    .line 572
    const-string/jumbo v3, "SPCacheVideoDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Video entry for ad_id "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/q;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/q;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/c;

    move-result-object v3

    .line 574
    if-eqz v3, :cond_0

    .line 575
    const-string/jumbo v4, "SPCacheVideoDownloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "A cache entry already exists for url - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {v3, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->a(Lcom/sponsorpay/publisher/mbe/player/caching/q;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    const-string/jumbo v4, "Video entry successfully added to cache entry"

    invoke-static {v0, v4}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :goto_1
    invoke-virtual {v3}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->e()V

    .line 586
    invoke-virtual {v2}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->b()V

    .line 588
    invoke-virtual {v3}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->c()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 589
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    const-string/jumbo v4, "Cache entry is already fully downloaded"

    invoke-static {v0, v4}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Removing URL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from the new downloads list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 593
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c:I

    .line 569
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 581
    :cond_1
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    const-string/jumbo v4, "The video entry was already part of this cache entry"

    invoke-static {v0, v4}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 598
    :cond_2
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v4, 0x1

    const/16 v10, 0xc8

    const/4 v2, 0x0

    .line 387
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 389
    :sswitch_0
    const/16 v3, 0xe10

    .line 390
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1494
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    sget v5, Lcom/sponsorpay/publisher/mbe/player/caching/h;->a:I

    invoke-static {v1, v5}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;I)I

    .line 1496
    iput v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c:I

    .line 1497
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 392
    if-eqz v0, :cond_2

    .line 393
    const-string/jumbo v1, "SPCacheVideoDownloadService"

    const-string/jumbo v5, "Cache config received, parsing..."

    invoke-static {v1, v5}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/p;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/p;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/p;->a()Lcom/sponsorpay/publisher/mbe/player/caching/i;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_2

    .line 397
    const-string/jumbo v5, "SPCacheVideoDownloadService"

    const-string/jumbo v6, "Creating cache configuration object"

    invoke-static {v5, v6}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/i;->a()Lcom/sponsorpay/publisher/mbe/player/caching/a;

    move-result-object v5

    .line 400
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a(Lcom/sponsorpay/publisher/mbe/player/caching/a;)V

    .line 402
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/p;->b()Ljava/util/ArrayList;

    move-result-object v6

    .line 404
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1501
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b()Lcom/sponsorpay/publisher/mbe/player/caching/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/a;->c()I

    move-result v7

    .line 1503
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/q;

    .line 1504
    iget-object v9, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v9, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1505
    add-int/lit8 v0, v1, 0x1

    .line 1506
    if-ne v0, v7, :cond_3

    .line 1507
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v8, "There are %d videos to download and the maximum cache slots size is %d"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v4

    invoke-static {v1, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Trimming the list of new videos to download to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_1
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b()V

    .line 409
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c()Lcom/sponsorpay/publisher/mbe/player/caching/m;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sponsorpay/publisher/mbe/player/caching/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->a(I)V

    .line 412
    invoke-virtual {p0, v10}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->sendEmptyMessage(I)Z

    .line 417
    :cond_2
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b()Lcom/sponsorpay/publisher/mbe/player/caching/a;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_9

    .line 419
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/a;->b()I

    move-result v0

    .line 420
    const-string/jumbo v1, "SPCacheVideoDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cache configuration exists, refresh interval is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_2
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v1, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->b(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;I)V

    goto/16 :goto_0

    :cond_3
    move v1, v0

    .line 1511
    goto/16 :goto_1

    .line 431
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 2461
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c()Lcom/sponsorpay/publisher/mbe/player/caching/m;

    move-result-object v4

    .line 2462
    invoke-virtual {v4, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/c;

    move-result-object v0

    .line 2465
    if-eqz v0, :cond_4

    .line 2466
    const-string/jumbo v5, "SPCacheVideoDownloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Updating entry "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    invoke-virtual {v0, v3}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->a(I)V

    .line 2470
    invoke-virtual {v4}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->b()V

    .line 2472
    if-ne v3, v11, :cond_5

    .line 2473
    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a(I)V

    .line 2474
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    const-string/jumbo v1, "Reason - File fully downloaded"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p0, v10}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2475
    :cond_5
    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    .line 2476
    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a(I)V

    .line 2477
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    const-string/jumbo v1, "Reason - File not downloadable (file not found or no space left)"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2478
    :cond_6
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->d()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_4

    .line 2479
    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a(I)V

    .line 2480
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    const-string/jumbo v1, "Reason - Maximum retry count reached"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 440
    :sswitch_2
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->e(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)I

    move-result v0

    sget v1, Lcom/sponsorpay/publisher/mbe/player/caching/h;->a:I

    if-ne v0, v1, :cond_0

    .line 2563
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->c:I

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    move v2, v4

    .line 441
    :cond_7
    if-eqz v2, :cond_8

    .line 442
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    const-string/jumbo v1, "No more videos to download \\m/"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->f(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/f;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/f;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 444
    :cond_8
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->g(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a()Z

    goto/16 :goto_0

    .line 450
    :sswitch_3
    invoke-virtual {p0, v10}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 453
    :sswitch_4
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/e;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->f(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/f;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/sponsorpay/publisher/mbe/player/caching/f;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto/16 :goto_2

    .line 387
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x44c -> :sswitch_0
        0x488 -> :sswitch_1
        0x514 -> :sswitch_4
        0x51e -> :sswitch_3
    .end sparse-switch
.end method
