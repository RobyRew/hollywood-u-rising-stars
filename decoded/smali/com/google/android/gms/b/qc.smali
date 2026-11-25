.class Lcom/google/android/gms/b/qc;
.super Lcom/google/android/gms/b/qe;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/h;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/qc;->a(Lcom/google/android/gms/plus/internal/h;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/h;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/b/qc;->a:I

    iget-object v1, p0, Lcom/google/android/gms/b/qc;->b:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/plus/internal/h;->a(Lcom/google/android/gms/common/api/internal/d;ILjava/lang/String;)Lcom/google/android/gms/common/internal/av;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/qc;->a(Lcom/google/android/gms/common/internal/av;)V

    return-void
.end method
