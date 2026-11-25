.class public Lcom/google/android/gms/analytics/internal/al;
.super Lcom/google/android/gms/analytics/internal/y;


# instance fields
.field private final a:Lcom/google/android/gms/b/oi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/aa;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/y;-><init>(Lcom/google/android/gms/analytics/internal/aa;)V

    new-instance v0, Lcom/google/android/gms/b/oi;

    invoke-direct {v0}, Lcom/google/android/gms/b/oi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/al;->a:Lcom/google/android/gms/b/oi;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/al;->r()Lcom/google/android/gms/measurement/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/l;->a()Lcom/google/android/gms/b/oi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/al;->a:Lcom/google/android/gms/b/oi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/oi;->a(Lcom/google/android/gms/b/oi;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/al;->b()V

    return-void
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/al;->u()Lcom/google/android/gms/analytics/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/r;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/al;->a:Lcom/google/android/gms/b/oi;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/b/oi;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/r;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/al;->a:Lcom/google/android/gms/b/oi;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/oi;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()Lcom/google/android/gms/b/oi;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/al;->z()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/al;->a:Lcom/google/android/gms/b/oi;

    return-object v0
.end method
