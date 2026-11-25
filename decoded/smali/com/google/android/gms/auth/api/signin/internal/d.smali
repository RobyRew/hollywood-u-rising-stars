.class Lcom/google/android/gms/auth/api/signin/internal/d;
.super Lcom/google/android/gms/auth/api/signin/internal/zza;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/signin/internal/zzq;

.field final synthetic b:Lcom/google/android/gms/auth/api/signin/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/c;Lcom/google/android/gms/auth/api/signin/internal/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/d;->b:Lcom/google/android/gms/auth/api/signin/internal/c;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/d;->a:Lcom/google/android/gms/auth/api/signin/internal/zzq;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/d;->a:Lcom/google/android/gms/auth/api/signin/internal/zzq;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/d;->b:Lcom/google/android/gms/auth/api/signin/internal/c;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/internal/c;->a:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzb(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/d;->b:Lcom/google/android/gms/auth/api/signin/internal/c;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/c;->a(Lcom/google/android/gms/common/api/z;)V

    return-void
.end method
