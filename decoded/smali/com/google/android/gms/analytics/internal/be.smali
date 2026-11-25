.class public Lcom/google/android/gms/analytics/internal/be;
.super Lcom/google/android/gms/analytics/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/y;-><init>(Lcom/google/android/gms/analytics/internal/aa;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public b()Lcom/google/android/gms/b/ok;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/be;->z()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/be;->r()Lcom/google/android/gms/measurement/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/l;->b()Lcom/google/android/gms/b/ok;

    move-result-object v0

    return-object v0
.end method
