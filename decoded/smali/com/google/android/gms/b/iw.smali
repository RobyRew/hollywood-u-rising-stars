.class abstract Lcom/google/android/gms/b/iw;
.super Lcom/google/android/gms/common/api/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/c",
        "<",
        "Lcom/google/android/gms/auth/api/proxy/ProxyApi$ProxyResult;",
        "Lcom/google/android/gms/b/in;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/n;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->zzVt:Lcom/google/android/gms/common/api/i;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/internal/c;-><init>(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/proxy/ProxyApi$ProxyResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/ja;

    invoke-direct {v0, p1}, Lcom/google/android/gms/b/ja;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected abstract a(Landroid/content/Context;Lcom/google/android/gms/b/it;)V
.end method

.method protected final a(Lcom/google/android/gms/b/in;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/b/in;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/b/in;->zzqJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/it;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/b/iw;->a(Landroid/content/Context;Lcom/google/android/gms/b/it;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/h;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/in;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/iw;->a(Lcom/google/android/gms/b/in;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/z;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/iw;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/proxy/ProxyApi$ProxyResult;

    move-result-object v0

    return-object v0
.end method
