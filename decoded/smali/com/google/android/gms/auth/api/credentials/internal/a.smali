.class Lcom/google/android/gms/auth/api/credentials/internal/a;
.super Lcom/google/android/gms/auth/api/credentials/internal/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/credentials/internal/g",
        "<",
        "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

.field final synthetic b:Lcom/google/android/gms/auth/api/credentials/internal/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zzd;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/a;->b:Lcom/google/android/gms/auth/api/credentials/internal/zzd;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/internal/a;->a:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/credentials/internal/g;-><init>(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzc;->zzh(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/internal/zzc;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzj;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/b;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/a;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/credentials/internal/a;->a:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zzj;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzi;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/z;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/a;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;

    move-result-object v0

    return-object v0
.end method
