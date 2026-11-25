.class Lcom/google/android/gms/b/kk;
.super Lcom/google/android/gms/b/kn;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/kj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/kj;Lcom/google/android/gms/common/api/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/kk;->a:Lcom/google/android/gms/b/kj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/b/kn;-><init>(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/b/ko;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/b/ko;->zzqJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/ks;

    new-instance v1, Lcom/google/android/gms/b/kl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/b/kl;-><init>(Lcom/google/android/gms/common/api/internal/d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/ks;->a(Lcom/google/android/gms/b/kp;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/h;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/ko;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/kk;->a(Lcom/google/android/gms/b/ko;)V

    return-void
.end method
