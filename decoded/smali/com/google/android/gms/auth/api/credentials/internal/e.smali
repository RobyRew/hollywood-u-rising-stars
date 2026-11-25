.class Lcom/google/android/gms/auth/api/credentials/internal/e;
.super Lcom/google/android/gms/auth/api/credentials/internal/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/credentials/internal/g",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/credentials/internal/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zzd;Lcom/google/android/gms/common/api/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/e;->a:Lcom/google/android/gms/auth/api/credentials/internal/zzd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/credentials/internal/g;-><init>(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected a(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzj;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/f;-><init>(Lcom/google/android/gms/common/api/internal/d;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzj;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzi;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/z;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/e;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
