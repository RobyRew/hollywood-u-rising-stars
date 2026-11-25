.class public Lcom/google/android/gms/b/cm;
.super Lcom/google/android/gms/b/fg;


# annotations
.annotation runtime Lcom/google/android/gms/b/fb;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/b/gu;

.field final b:Lcom/google/android/gms/b/cp;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/gu;Lcom/google/android/gms/b/cp;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/b/fg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/cm;->a:Lcom/google/android/gms/b/gu;

    iput-object p2, p0, Lcom/google/android/gms/b/cm;->b:Lcom/google/android/gms/b/cp;

    iput-object p3, p0, Lcom/google/android/gms/b/cm;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->k()Lcom/google/android/gms/b/co;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/b/co;->a(Lcom/google/android/gms/b/cm;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/cm;->b:Lcom/google/android/gms/b/cp;

    iget-object v1, p0, Lcom/google/android/gms/b/cm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/cp;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/b/fq;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/b/cn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/b/cn;-><init>(Lcom/google/android/gms/b/cm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/b/fq;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/b/cn;

    invoke-direct {v2, p0}, Lcom/google/android/gms/b/cn;-><init>(Lcom/google/android/gms/b/cm;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
