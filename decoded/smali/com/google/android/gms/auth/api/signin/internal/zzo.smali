.class public Lcom/google/android/gms/auth/api/signin/internal/zzo;
.super Lcom/google/android/gms/common/internal/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/aa",
        "<",
        "Lcom/google/android/gms/auth/api/signin/internal/zzh;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/android/gms/auth/api/signin/zzg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/v;Lcom/google/android/gms/auth/api/signin/zzg;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V
    .locals 7

    const/16 v3, 0x57

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/aa;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/v;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/zzg;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzo;->c:Lcom/google/android/gms/auth/api/signin/zzg;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zzh;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zzh$zza;->zzaD(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zzh;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.auth.api.signin.service.START"

    return-object v0
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzo;->a(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zzh;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    return-object v0
.end method
