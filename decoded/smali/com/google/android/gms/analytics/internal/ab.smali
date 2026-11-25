.class Lcom/google/android/gms/analytics/internal/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/aa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/ab;->a:Lcom/google/android/gms/analytics/internal/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/ab;->a:Lcom/google/android/gms/analytics/internal/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/aa;->g()Lcom/google/android/gms/analytics/internal/i;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "Job execution failed"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/analytics/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
