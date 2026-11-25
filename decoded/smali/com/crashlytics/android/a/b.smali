.class Lcom/crashlytics/android/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a/a/d/f;


# instance fields
.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field b:Lcom/crashlytics/android/a/aa;

.field private final c:Lb/a/a/a/q;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/crashlytics/android/a/i;

.field private final f:Lcom/crashlytics/android/a/ah;

.field private final g:Lb/a/a/a/a/e/m;


# direct methods
.method public constructor <init>(Lb/a/a/a/q;Landroid/content/Context;Lcom/crashlytics/android/a/i;Lcom/crashlytics/android/a/ah;Lb/a/a/a/a/e/m;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/crashlytics/android/a/p;

    invoke-direct {v0}, Lcom/crashlytics/android/a/p;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/a/b;->b:Lcom/crashlytics/android/a/aa;

    .line 32
    iput-object p1, p0, Lcom/crashlytics/android/a/b;->c:Lb/a/a/a/q;

    .line 33
    iput-object p2, p0, Lcom/crashlytics/android/a/b;->d:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/crashlytics/android/a/b;->e:Lcom/crashlytics/android/a/i;

    .line 35
    iput-object p4, p0, Lcom/crashlytics/android/a/b;->f:Lcom/crashlytics/android/a/ah;

    .line 36
    iput-object p5, p0, Lcom/crashlytics/android/a/b;->g:Lb/a/a/a/a/e/m;

    .line 37
    iput-object p6, p0, Lcom/crashlytics/android/a/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/a/b;)Lcom/crashlytics/android/a/ah;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/crashlytics/android/a/b;->f:Lcom/crashlytics/android/a/ah;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/a/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Failed to run events task"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/crashlytics/android/a/b;)Lcom/crashlytics/android/a/i;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/crashlytics/android/a/b;->e:Lcom/crashlytics/android/a/i;

    return-object v0
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/a/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Failed to submit events task"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/crashlytics/android/a/b;)Lb/a/a/a/q;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/crashlytics/android/a/b;->c:Lb/a/a/a/q;

    return-object v0
.end method

.method static synthetic d(Lcom/crashlytics/android/a/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/crashlytics/android/a/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/crashlytics/android/a/b;)Lb/a/a/a/a/e/m;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/crashlytics/android/a/b;->g:Lb/a/a/a/a/e/m;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/crashlytics/android/a/d;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/a/d;-><init>(Lcom/crashlytics/android/a/b;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/b;->b(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public a(Lb/a/a/a/a/g/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/crashlytics/android/a/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/a/c;-><init>(Lcom/crashlytics/android/a/b;Lb/a/a/a/a/g/b;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/b;->b(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public a(Lcom/crashlytics/android/a/ad;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0, v0}, Lcom/crashlytics/android/a/b;->a(Lcom/crashlytics/android/a/ad;ZZ)V

    .line 45
    return-void
.end method

.method a(Lcom/crashlytics/android/a/ad;ZZ)V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/crashlytics/android/a/h;

    invoke-direct {v0, p0, p1, p3}, Lcom/crashlytics/android/a/h;-><init>(Lcom/crashlytics/android/a/b;Lcom/crashlytics/android/a/ad;Z)V

    .line 165
    if-eqz p2, :cond_0

    .line 166
    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/b;->a(Ljava/lang/Runnable;)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/b;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/crashlytics/android/a/e;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/a/e;-><init>(Lcom/crashlytics/android/a/b;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/b;->b(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/crashlytics/android/a/f;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/a/f;-><init>(Lcom/crashlytics/android/a/b;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/b;->b(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public b(Lcom/crashlytics/android/a/ad;)V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/crashlytics/android/a/b;->a(Lcom/crashlytics/android/a/ad;ZZ)V

    .line 52
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/crashlytics/android/a/g;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/a/g;-><init>(Lcom/crashlytics/android/a/b;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/a/b;->b(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public c(Lcom/crashlytics/android/a/ad;)V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/crashlytics/android/a/b;->a(Lcom/crashlytics/android/a/ad;ZZ)V

    .line 59
    return-void
.end method
