.class Lcom/google/android/gms/b/iy;
.super Lcom/google/android/gms/b/iw;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

.field final synthetic b:Lcom/google/android/gms/b/ix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ix;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/iy;->b:Lcom/google/android/gms/b/ix;

    iput-object p3, p0, Lcom/google/android/gms/b/iy;->a:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/b/iw;-><init>(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/google/android/gms/b/it;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/b/iz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/iz;-><init>(Lcom/google/android/gms/b/iy;)V

    iget-object v1, p0, Lcom/google/android/gms/b/iy;->a:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/b/it;->a(Lcom/google/android/gms/b/iq;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V

    return-void
.end method
