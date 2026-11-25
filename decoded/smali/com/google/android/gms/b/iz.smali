.class Lcom/google/android/gms/b/iz;
.super Lcom/google/android/gms/b/im;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/iy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/iy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/iz;->a:Lcom/google/android/gms/b/iy;

    invoke-direct {p0}, Lcom/google/android/gms/b/im;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/iz;->a:Lcom/google/android/gms/b/iy;

    new-instance v1, Lcom/google/android/gms/b/ja;

    invoke-direct {v1, p1}, Lcom/google/android/gms/b/ja;-><init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/iy;->a(Lcom/google/android/gms/common/api/z;)V

    return-void
.end method
