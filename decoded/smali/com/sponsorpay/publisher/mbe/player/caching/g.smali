.class final Lcom/sponsorpay/publisher/mbe/player/caching/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

.field private b:Lcom/sponsorpay/c/v;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 264
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    .line 265
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->c:Z

    .line 266
    return-void
.end method

.method private declared-synchronized a(Lcom/sponsorpay/publisher/mbe/player/caching/c;)I
    .locals 8

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 309
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Downloading video from URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->a()Ljava/io/File;

    move-result-object v3

    .line 312
    invoke-static {v3}, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 341
    :goto_0
    monitor-exit p0

    return v0

    .line 316
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    :try_start_2
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->c()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    :cond_1
    move v0, v2

    .line 320
    :goto_1
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sponsorpay/c/u;->a(Ljava/lang/String;Ljava/io/File;)Lcom/sponsorpay/c/u;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sponsorpay/c/u;->a(Z)Lcom/sponsorpay/c/u;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/sponsorpay/c/u;->a()Lcom/sponsorpay/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/c/v;

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->b:Lcom/sponsorpay/c/v;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    :try_start_3
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->b:Lcom/sponsorpay/c/v;

    invoke-virtual {v0}, Lcom/sponsorpay/c/v;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->b:Lcom/sponsorpay/c/v;

    .line 326
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a()Lcom/sponsorpay/publisher/mbe/player/caching/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->d()Lcom/sponsorpay/publisher/mbe/player/caching/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/l;->b()V
    :try_end_3
    .catch Lcom/sponsorpay/c/w; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sponsorpay/c/x; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 327
    const/4 v0, 0x2

    goto :goto_0

    .line 318
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 330
    :catch_0
    move-exception v0

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->b:Lcom/sponsorpay/c/v;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    .line 331
    goto :goto_0

    .line 333
    :catch_1
    move-exception v0

    .line 334
    :try_start_5
    const-string/jumbo v1, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Video downloading from URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has been interrupted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v1, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "An error occurred while downloading the videos: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sponsorpay/c/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_3
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->b:Lcom/sponsorpay/c/v;

    move v0, v2

    .line 341
    goto/16 :goto_0

    .line 338
    :cond_4
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "No permission granted to write to: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 330
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private static a(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    const-string/jumbo v1, "SPCacheVideoDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cache File with path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has not been created"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return v0

    .line 364
    :catch_0
    move-exception v1

    .line 365
    const-string/jumbo v2, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "impossible to create cache File with path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v2, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "error creating cache File: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 345
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/g;->removeMessages(I)V

    .line 346
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/g;->removeMessages(I)V

    .line 347
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->b:Lcom/sponsorpay/c/v;

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->c:Z

    .line 349
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    const-string/jumbo v1, "Download handler - canceling downloads"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->b:Lcom/sponsorpay/c/v;

    invoke-virtual {v0}, Lcom/sponsorpay/c/v;->b()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->b:Lcom/sponsorpay/c/v;

    .line 353
    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 270
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 273
    :sswitch_0
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    const-string/jumbo v1, "Download handler - Downloading config..."

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x0

    .line 277
    :try_start_0
    const-string/jumbo v0, "precaching"

    invoke-static {v0}, Lcom/sponsorpay/c/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sponsorpay/a;->a()Lcom/sponsorpay/a/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sponsorpay/c/o;->a(Ljava/lang/String;Lcom/sponsorpay/a/a;)Lcom/sponsorpay/c/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/o;->d()Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string/jumbo v2, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Download handler - Config will be fetched from - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {v0}, Lcom/sponsorpay/c/t;->b(Ljava/lang/String;)Lcom/sponsorpay/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/t;->a()Lcom/sponsorpay/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :goto_1
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/e;

    move-result-object v1

    const/16 v2, 0x44c

    invoke-virtual {v1, v2, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    :goto_2
    const-string/jumbo v2, "SPCacheVideoDownloadService"

    const-string/jumbo v3, "An error occurred"

    invoke-static {v2, v3, v0}, Lcom/sponsorpay/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_1

    .line 289
    :sswitch_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v0, v6}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Z)Z

    .line 290
    const-string/jumbo v0, "SPCacheVideoDownloadService"

    const-string/jumbo v1, "Download handler - Downloading video..."

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/caching/c;

    .line 292
    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a(Lcom/sponsorpay/publisher/mbe/player/caching/c;)I

    move-result v1

    .line 293
    const-string/jumbo v2, "SPCacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Download handler - Video state = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v2, v5}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->a(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;Z)Z

    .line 296
    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->a:Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-static {v2}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;->d(Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;)Lcom/sponsorpay/publisher/mbe/player/caching/e;

    move-result-object v2

    const/16 v3, 0x488

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/e;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 297
    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->c:Z

    if-eqz v1, :cond_0

    .line 298
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 299
    const-string/jumbo v2, "canceled"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 301
    iput-boolean v5, p0, Lcom/sponsorpay/publisher/mbe/player/caching/g;->c:Z

    .line 303
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 281
    :catch_1
    move-exception v0

    goto :goto_2

    .line 270
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
