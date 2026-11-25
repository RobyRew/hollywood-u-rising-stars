.class public final Lcom/google/android/gms/common/api/w;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/common/api/z;Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/z;",
            ">(TR;",
            "Lcom/google/android/gms/common/api/n;",
            ")",
            "Lcom/google/android/gms/common/api/t",
            "<TR;>;"
        }
    .end annotation

    const-string/jumbo v0, "Result must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/x;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/x;-><init>(Lcom/google/android/gms/common/api/n;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/z;)V

    new-instance v1, Lcom/google/android/gms/common/api/internal/ax;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/internal/ax;-><init>(Lcom/google/android/gms/common/api/u;)V

    return-object v1
.end method
