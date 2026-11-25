.class Lcom/google/android/gms/b/qd;
.super Lcom/google/android/gms/b/qe;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/b/qb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/qb;Lcom/google/android/gms/common/api/n;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/b/qd;->b:Lcom/google/android/gms/b/qb;

    iput-object p3, p0, Lcom/google/android/gms/b/qd;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/b/qe;-><init>(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/b/qc;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/h;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/qd;->a(Lcom/google/android/gms/plus/internal/h;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/qd;->a:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/h;->a(Lcom/google/android/gms/common/api/internal/d;Ljava/lang/String;)Lcom/google/android/gms/common/internal/av;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/qd;->a(Lcom/google/android/gms/common/internal/av;)V

    return-void
.end method
