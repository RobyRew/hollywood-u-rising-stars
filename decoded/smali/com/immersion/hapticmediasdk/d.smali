.class public Lcom/immersion/hapticmediasdk/d;
.super Lcom/immersion/hapticmediasdk/a;


# static fields
.field public static h:I = 0xd

.field public static i:I = 0x0

.field public static j:I = 0x1

.field public static k:I = 0x2


# instance fields
.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/immersion/hapticmediasdk/a;-><init>(ILandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x190

    sget v1, Lcom/immersion/hapticmediasdk/d;->h:I

    sget v2, Lcom/immersion/hapticmediasdk/d;->j:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/d;->h:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/d;->k:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/d;->i:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/d;->h:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/d;->i:I

    :cond_0
    :try_start_1
    iput v0, p0, Lcom/immersion/hapticmediasdk/d;->l:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public static synthetic a(Lcom/immersion/hapticmediasdk/d;I)I
    .locals 2

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/d;->j:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->k:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->i:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    sput v0, Lcom/immersion/hapticmediasdk/d;->h:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/d;->i:I

    :cond_0
    :try_start_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/d;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    throw v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "https"

    const-string/jumbo v2, "http"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lc/k;

    invoke-direct {v2, p0, v1}, Lc/k;-><init>(Lcom/immersion/hapticmediasdk/d;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v3, "ping url"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    monitor-enter v2

    const/16 v1, -0x64

    :try_start_1
    iput v1, p0, Lcom/immersion/hapticmediasdk/d;->l:I

    :goto_0
    iget v1, p0, Lcom/immersion/hapticmediasdk/d;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v1, :cond_0

    const-wide/16 v4, 0x64

    :try_start_2
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    const/16 v1, 0xc8

    :try_start_3
    iget v3, p0, Lcom/immersion/hapticmediasdk/d;->l:I

    if-gt v1, v3, :cond_1

    iget v1, p0, Lcom/immersion/hapticmediasdk/d;->l:I

    const/16 v3, 0x18f

    if-gt v1, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    return v0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "HapticContentSDK"

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x4

    if-nez p1, :cond_0

    const-string/jumbo v1, "HapticContentSDK"

    const-string/jumbo v2, "invalid local hapt file url: null"

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->c:Lcom/immersion/hapticmediasdk/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/immersion/hapticmediasdk/e;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->c:Lcom/immersion/hapticmediasdk/e;

    sget-object v1, Lcom/immersion/hapticmediasdk/b;->b:Lcom/immersion/hapticmediasdk/b;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/e;->a(Lcom/immersion/hapticmediasdk/b;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "HapticContentSDK"

    const-string/jumbo v1, "could not access local hapt file: permission denied"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "HapticContentSDK"

    const-string/jumbo v2, "invalid local hapt file url: directory"

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static j()I
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method

.method public static k()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static l()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/d;->c()Lcom/immersion/hapticmediasdk/b;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/b;->d:Lcom/immersion/hapticmediasdk/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/b;->a:Lcom/immersion/hapticmediasdk/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/b;->b:Lcom/immersion/hapticmediasdk/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/b;->e:Lcom/immersion/hapticmediasdk/b;

    if-ne v0, v1, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->c:Lcom/immersion/hapticmediasdk/e;

    sget-object v1, Lcom/immersion/hapticmediasdk/b;->a:Lcom/immersion/hapticmediasdk/b;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/e;->a(Lcom/immersion/hapticmediasdk/b;)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/d;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/d;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->c:Lcom/immersion/hapticmediasdk/e;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/immersion/hapticmediasdk/e;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->c:Lcom/immersion/hapticmediasdk/e;

    sget-object v1, Lcom/immersion/hapticmediasdk/b;->b:Lcom/immersion/hapticmediasdk/b;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/e;->a(Lcom/immersion/hapticmediasdk/b;)I

    move-result v0

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "HapticContentSDK"

    const-string/jumbo v1, "could not access hapt file url: unsupposted protocol"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x5

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "HapticContentSDK"

    const-string/jumbo v1, "could not access hapt file url: Inaccessible URL"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    goto :goto_0

    :cond_7
    const/4 v0, -0x1

    goto :goto_0
.end method
