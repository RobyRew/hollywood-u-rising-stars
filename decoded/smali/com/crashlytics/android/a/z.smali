.class Lcom/crashlytics/android/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/a/o;


# instance fields
.field final a:Lcom/crashlytics/android/a/b;

.field final b:Lb/a/a/a/a;

.field final c:Lcom/crashlytics/android/a/m;

.field final d:Lcom/crashlytics/android/a/k;

.field private final e:J


# direct methods
.method constructor <init>(Lcom/crashlytics/android/a/b;Lb/a/a/a/a;Lcom/crashlytics/android/a/m;Lcom/crashlytics/android/a/k;J)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/b;

    .line 60
    iput-object p2, p0, Lcom/crashlytics/android/a/z;->b:Lb/a/a/a/a;

    .line 61
    iput-object p3, p0, Lcom/crashlytics/android/a/z;->c:Lcom/crashlytics/android/a/m;

    .line 62
    iput-object p4, p0, Lcom/crashlytics/android/a/z;->d:Lcom/crashlytics/android/a/k;

    .line 63
    iput-wide p5, p0, Lcom/crashlytics/android/a/z;->e:J

    .line 64
    return-void
.end method

.method public static a(Lb/a/a/a/q;Landroid/content/Context;Lb/a/a/a/a/b/z;Ljava/lang/String;Ljava/lang/String;J)Lcom/crashlytics/android/a/z;
    .locals 9

    .prologue
    .line 37
    new-instance v4, Lcom/crashlytics/android/a/ah;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/crashlytics/android/a/ah;-><init>(Landroid/content/Context;Lb/a/a/a/a/b/z;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v3, Lcom/crashlytics/android/a/i;

    new-instance v0, Lb/a/a/a/a/f/b;

    invoke-direct {v0, p0}, Lb/a/a/a/a/f/b;-><init>(Lb/a/a/a/q;)V

    invoke-direct {v3, p1, v0}, Lcom/crashlytics/android/a/i;-><init>(Landroid/content/Context;Lb/a/a/a/a/f/a;)V

    .line 41
    new-instance v5, Lb/a/a/a/a/e/b;

    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    invoke-direct {v5, v0}, Lb/a/a/a/a/e/b;-><init>(Lb/a/a/a/t;)V

    .line 43
    new-instance v7, Lb/a/a/a/a;

    invoke-direct {v7, p1}, Lb/a/a/a/a;-><init>(Landroid/content/Context;)V

    .line 44
    const-string/jumbo v0, "Answers Events Handler"

    invoke-static {v0}, Lb/a/a/a/a/b/v;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 46
    new-instance v8, Lcom/crashlytics/android/a/m;

    invoke-direct {v8, v6}, Lcom/crashlytics/android/a/m;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 47
    new-instance v0, Lcom/crashlytics/android/a/b;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/a/b;-><init>(Lb/a/a/a/q;Landroid/content/Context;Lcom/crashlytics/android/a/i;Lcom/crashlytics/android/a/ah;Lb/a/a/a/a/e/m;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 49
    invoke-static {p1}, Lcom/crashlytics/android/a/k;->a(Landroid/content/Context;)Lcom/crashlytics/android/a/k;

    move-result-object v5

    .line 50
    new-instance v1, Lcom/crashlytics/android/a/z;

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/crashlytics/android/a/z;-><init>(Lcom/crashlytics/android/a/b;Lb/a/a/a/a;Lcom/crashlytics/android/a/m;Lcom/crashlytics/android/a/k;J)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 132
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Answers"

    const-string/jumbo v2, "Flush events when app is backgrounded"

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/b;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/b;->c()V

    .line 134
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Answers"

    const-string/jumbo v2, "Logged install"

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/b;

    invoke-static {p1, p2}, Lcom/crashlytics/android/a/ab;->a(J)Lcom/crashlytics/android/a/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/a/b;->b(Lcom/crashlytics/android/a/ad;)V

    .line 123
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/crashlytics/android/a/ae;)V
    .locals 4

    .prologue
    .line 126
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Answers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Logged lifecycle event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/crashlytics/android/a/ae;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/b;

    invoke-static {p2, p1}, Lcom/crashlytics/android/a/ab;->a(Lcom/crashlytics/android/a/ae;Landroid/app/Activity;)Lcom/crashlytics/android/a/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/a/b;->a(Lcom/crashlytics/android/a/ad;)V

    .line 128
    return-void
.end method

.method public a(Lb/a/a/a/a/g/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->c:Lcom/crashlytics/android/a/m;

    iget-boolean v1, p1, Lb/a/a/a/a/g/b;->h:Z

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/a/m;->a(Z)V

    .line 139
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/crashlytics/android/a/b;->a(Lb/a/a/a/a/g/b;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Answers"

    const-string/jumbo v2, "Logged crash"

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/b;

    invoke-static {p1, p2}, Lcom/crashlytics/android/a/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/a/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/a/b;->c(Lcom/crashlytics/android/a/ad;)V

    .line 114
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/b;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/b;->b()V

    .line 71
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->b:Lb/a/a/a/a;

    new-instance v1, Lcom/crashlytics/android/a/j;

    iget-object v2, p0, Lcom/crashlytics/android/a/z;->c:Lcom/crashlytics/android/a/m;

    invoke-direct {v1, p0, v2}, Lcom/crashlytics/android/a/j;-><init>(Lcom/crashlytics/android/a/z;Lcom/crashlytics/android/a/m;)V

    invoke-virtual {v0, v1}, Lb/a/a/a/a;->a(Lb/a/a/a/d;)Z

    .line 72
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->c:Lcom/crashlytics/android/a/m;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/a/m;->a(Lcom/crashlytics/android/a/o;)V

    .line 74
    invoke-virtual {p0}, Lcom/crashlytics/android/a/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-wide v0, p0, Lcom/crashlytics/android/a/z;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/a/z;->a(J)V

    .line 76
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->d:Lcom/crashlytics/android/a/k;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/k;->a()V

    .line 78
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->b:Lb/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a;->a()V

    .line 85
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->a:Lcom/crashlytics/android/a/b;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/b;->a()V

    .line 86
    return-void
.end method

.method d()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->d:Lcom/crashlytics/android/a/k;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
