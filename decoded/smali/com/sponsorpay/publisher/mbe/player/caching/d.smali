.class public Lcom/sponsorpay/publisher/mbe/player/caching/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/sponsorpay/publisher/mbe/player/caching/d;


# instance fields
.field private b:Lcom/sponsorpay/publisher/mbe/player/caching/m;

.field private c:Lcom/sponsorpay/publisher/mbe/player/caching/a;

.field private d:Lcom/sponsorpay/publisher/mbe/player/caching/l;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/caching/d;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/d;-><init>()V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a:Lcom/sponsorpay/publisher/mbe/player/caching/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->e:Z

    .line 24
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->f:Z

    .line 25
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->g:Z

    .line 28
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/m;->a:Lcom/sponsorpay/publisher/mbe/player/caching/m;

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b:Lcom/sponsorpay/publisher/mbe/player/caching/m;

    .line 29
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/l;->a:Lcom/sponsorpay/publisher/mbe/player/caching/l;

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->d:Lcom/sponsorpay/publisher/mbe/player/caching/l;

    .line 30
    return-void
.end method

.method public static a()Lcom/sponsorpay/publisher/mbe/player/caching/d;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a:Lcom/sponsorpay/publisher/mbe/player/caching/d;

    return-object v0
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/player/caching/d;Lcom/sponsorpay/publisher/mbe/player/caching/l;)Lcom/sponsorpay/publisher/mbe/player/caching/l;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->d:Lcom/sponsorpay/publisher/mbe/player/caching/l;

    return-object p1
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/player/caching/d;)Lcom/sponsorpay/publisher/mbe/player/caching/m;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b:Lcom/sponsorpay/publisher/mbe/player/caching/m;

    return-object v0
.end method

.method static synthetic a(Lcom/sponsorpay/publisher/mbe/player/caching/d;Lcom/sponsorpay/publisher/mbe/player/caching/m;)Lcom/sponsorpay/publisher/mbe/player/caching/m;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b:Lcom/sponsorpay/publisher/mbe/player/caching/m;

    return-object p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->e:Z

    if-eqz v1, :cond_0

    .line 119
    const-string/jumbo v1, "SPCacheManager"

    const-string/jumbo v2, "The download service is running, let\'s cancel current downloads"

    invoke-static {v1, v2}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const-string/jumbo v2, "action.to.perform"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    iget-boolean v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->e:Z

    if-eqz v1, :cond_0

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheVideoDownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const-string/jumbo v2, "action.to.perform"

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 78
    const-string/jumbo v0, "SPCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Getting URI for URL - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->a:Lcom/sponsorpay/publisher/mbe/player/caching/d;

    .line 1062
    iget-object v0, v0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b:Lcom/sponsorpay/publisher/mbe/player/caching/m;

    .line 79
    invoke-virtual {v0, p1}, Lcom/sponsorpay/publisher/mbe/player/caching/m;->a(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/caching/c;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    :goto_0
    const-string/jumbo v1, "SPCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "URI = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/c/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-object v0

    .line 1103
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->g:Z

    .line 1104
    invoke-direct {p0, p2}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c(Landroid/content/Context;)V

    .line 86
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sponsorpay/publisher/mbe/player/caching/j;

    invoke-direct {v2, p0, v0}, Lcom/sponsorpay/publisher/mbe/player/caching/j;-><init>(Lcom/sponsorpay/publisher/mbe/player/caching/d;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 55
    return-void
.end method

.method public final a(Lcom/sponsorpay/publisher/mbe/player/caching/a;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c:Lcom/sponsorpay/publisher/mbe/player/caching/a;

    .line 71
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->e:Z

    .line 75
    return-void
.end method

.method public final b()Lcom/sponsorpay/publisher/mbe/player/caching/a;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->c:Lcom/sponsorpay/publisher/mbe/player/caching/a;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->g:Z

    .line 109
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/mbe/player/caching/d;->d(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public final c()Lcom/sponsorpay/publisher/mbe/player/caching/m;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->b:Lcom/sponsorpay/publisher/mbe/player/caching/m;

    return-object v0
.end method

.method public final d()Lcom/sponsorpay/publisher/mbe/player/caching/l;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->d:Lcom/sponsorpay/publisher/mbe/player/caching/l;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/d;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
