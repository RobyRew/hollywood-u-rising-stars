.class abstract Lcom/google/android/gms/auth/api/signin/internal/i;
.super Lcom/google/android/gms/common/api/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/z;",
        ">",
        "Lcom/google/android/gms/common/api/internal/c",
        "<TR;",
        "Lcom/google/android/gms/auth/api/signin/internal/zzd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/android/gms/auth/api/signin/internal/zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzc;Lcom/google/android/gms/common/api/n;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/i;->c:Lcom/google/android/gms/auth/api/signin/internal/zzc;

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->zzVx:Lcom/google/android/gms/common/api/i;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/c;-><init>(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/n;)V

    return-void
.end method
