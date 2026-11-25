.class Lcom/google/android/gms/auth/api/credentials/internal/b;
.super Lcom/google/android/gms/auth/api/credentials/internal/zza;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/credentials/internal/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/b;->a:Lcom/google/android/gms/auth/api/credentials/internal/a;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/credentials/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/b;->a:Lcom/google/android/gms/auth/api/credentials/internal/a;

    new-instance v1, Lcom/google/android/gms/auth/api/credentials/internal/zzc;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzc;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/a;->a(Lcom/google/android/gms/common/api/z;)V

    return-void
.end method

.method public zzg(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/b;->a:Lcom/google/android/gms/auth/api/credentials/internal/a;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzc;->zzh(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/internal/zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/a;->a(Lcom/google/android/gms/common/api/z;)V

    return-void
.end method
