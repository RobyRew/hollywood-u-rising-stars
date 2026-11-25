.class Lcom/google/android/gms/b/gw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/gv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/gv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/gw;->a:Lcom/google/android/gms/b/gv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/gw;->a:Lcom/google/android/gms/b/gv;

    iget-object v0, v0, Lcom/google/android/gms/b/gv;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->v()V

    iget-object v0, p0, Lcom/google/android/gms/b/gw;->a:Lcom/google/android/gms/b/gv;

    iget-object v0, v0, Lcom/google/android/gms/b/gv;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->h()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->m()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/gw;->a:Lcom/google/android/gms/b/gv;

    invoke-static {v0}, Lcom/google/android/gms/b/gv;->d(Lcom/google/android/gms/b/gv;)Lcom/google/android/gms/b/gy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/gw;->a:Lcom/google/android/gms/b/gv;

    invoke-static {v0}, Lcom/google/android/gms/b/gv;->d(Lcom/google/android/gms/b/gv;)Lcom/google/android/gms/b/gy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/gy;->a()V

    iget-object v0, p0, Lcom/google/android/gms/b/gw;->a:Lcom/google/android/gms/b/gv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/b/gv;->a(Lcom/google/android/gms/b/gv;Lcom/google/android/gms/b/gy;)Lcom/google/android/gms/b/gy;

    :cond_1
    return-void
.end method
