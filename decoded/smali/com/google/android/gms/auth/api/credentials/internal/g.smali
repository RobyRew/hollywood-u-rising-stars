.class abstract Lcom/google/android/gms/auth/api/credentials/internal/g;
.super Lcom/google/android/gms/common/api/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/z;",
        ">",
        "Lcom/google/android/gms/common/api/internal/c",
        "<TR;",
        "Lcom/google/android/gms/auth/api/credentials/internal/zzf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/n;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->zzVu:Lcom/google/android/gms/common/api/i;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/internal/c;-><init>(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzj;)V
.end method

.method protected final a(Lcom/google/android/gms/auth/api/credentials/internal/zzf;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzf;->zzqJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/internal/zzj;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/api/credentials/internal/g;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzj;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/h;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/internal/zzf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/g;->a(Lcom/google/android/gms/auth/api/credentials/internal/zzf;)V

    return-void
.end method
