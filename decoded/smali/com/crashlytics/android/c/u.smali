.class Lcom/crashlytics/android/c/u;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/a/a/g/p;

.field final synthetic b:Lcom/crashlytics/android/c/q;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/q;Lb/a/a/a/a/g/p;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/crashlytics/android/c/u;->b:Lcom/crashlytics/android/c/q;

    iput-object p2, p0, Lcom/crashlytics/android/c/u;->a:Lb/a/a/a/a/g/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/crashlytics/android/c/u;->b:Lcom/crashlytics/android/c/q;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/q;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Skipping session finalization because a crash has already occurred."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 485
    :goto_0
    return-object v0

    .line 481
    :cond_0
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Finalizing previously open sessions."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/crashlytics/android/c/u;->b:Lcom/crashlytics/android/c/q;

    iget-object v1, p0, Lcom/crashlytics/android/c/u;->a:Lb/a/a/a/a/g/p;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/c/q;->a(Lcom/crashlytics/android/c/q;Lb/a/a/a/a/g/p;Z)V

    .line 483
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Closed all previously open sessions"

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/crashlytics/android/c/u;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
