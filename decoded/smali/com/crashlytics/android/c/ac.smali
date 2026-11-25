.class Lcom/crashlytics/android/c/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/crashlytics/android/c/q;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/q;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/crashlytics/android/c/ac;->d:Lcom/crashlytics/android/c/q;

    iput-object p2, p0, Lcom/crashlytics/android/c/ac;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/c/ac;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/c/ac;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/crashlytics/android/c/ac;->d:Lcom/crashlytics/android/c/q;

    invoke-static {v0}, Lcom/crashlytics/android/c/q;->a(Lcom/crashlytics/android/c/q;)Lcom/crashlytics/android/c/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/c/ao;->q()V

    .line 285
    iget-object v0, p0, Lcom/crashlytics/android/c/ac;->d:Lcom/crashlytics/android/c/q;

    iget-object v2, p0, Lcom/crashlytics/android/c/ac;->a:Ljava/util/Date;

    iget-object v3, p0, Lcom/crashlytics/android/c/ac;->b:Ljava/lang/Thread;

    iget-object v4, p0, Lcom/crashlytics/android/c/ac;->c:Ljava/lang/Throwable;

    invoke-static {v0, v2, v3, v4}, Lcom/crashlytics/android/c/q;->a(Lcom/crashlytics/android/c/q;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 287
    invoke-static {}, Lb/a/a/a/a/g/q;->a()Lb/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/g/q;->b()Lb/a/a/a/a/g/v;

    move-result-object v2

    .line 288
    if-eqz v2, :cond_1

    iget-object v0, v2, Lb/a/a/a/a/g/v;->b:Lb/a/a/a/a/g/p;

    .line 291
    :goto_0
    iget-object v3, p0, Lcom/crashlytics/android/c/ac;->d:Lcom/crashlytics/android/c/q;

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/c/q;->b(Lb/a/a/a/a/g/p;)V

    .line 292
    iget-object v0, p0, Lcom/crashlytics/android/c/ac;->d:Lcom/crashlytics/android/c/q;

    invoke-static {v0}, Lcom/crashlytics/android/c/q;->b(Lcom/crashlytics/android/c/q;)V

    .line 294
    iget-object v0, p0, Lcom/crashlytics/android/c/ac;->d:Lcom/crashlytics/android/c/q;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/q;->c()V

    .line 296
    iget-object v0, p0, Lcom/crashlytics/android/c/ac;->d:Lcom/crashlytics/android/c/q;

    invoke-static {v0, v2}, Lcom/crashlytics/android/c/q;->a(Lcom/crashlytics/android/c/q;Lb/a/a/a/a/g/v;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/crashlytics/android/c/ac;->d:Lcom/crashlytics/android/c/q;

    invoke-static {v0, v2}, Lcom/crashlytics/android/c/q;->b(Lcom/crashlytics/android/c/q;Lb/a/a/a/a/g/v;)V

    .line 299
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    .line 288
    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ac;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
