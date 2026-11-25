.class Lcom/google/android/gms/b/cn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/cm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/cn;->a:Lcom/google/android/gms/b/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->k()Lcom/google/android/gms/b/co;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/cn;->a:Lcom/google/android/gms/b/cm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/co;->b(Lcom/google/android/gms/b/cm;)V

    return-void
.end method
