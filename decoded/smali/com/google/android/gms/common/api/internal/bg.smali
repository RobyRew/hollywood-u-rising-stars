.class Lcom/google/android/gms/common/api/internal/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/z;

.field final synthetic b:Lcom/google/android/gms/common/api/internal/bf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/bf;Lcom/google/android/gms/common/api/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bg;->a:Lcom/google/android/gms/common/api/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/bf;->a(Lcom/google/android/gms/common/api/internal/bf;)Lcom/google/android/gms/common/api/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bg;->a:Lcom/google/android/gms/common/api/z;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/ac;->a(Lcom/google/android/gms/common/api/z;)Lcom/google/android/gms/common/api/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/bf;->b(Lcom/google/android/gms/common/api/internal/bf;)Lcom/google/android/gms/common/api/internal/bh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/bf;->b(Lcom/google/android/gms/common/api/internal/bf;)Lcom/google/android/gms/common/api/internal/bh;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/api/internal/bh;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/bh;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bg;->a:Lcom/google/android/gms/common/api/z;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/bf;->a(Lcom/google/android/gms/common/api/internal/bf;Lcom/google/android/gms/common/api/z;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/bf;->c(Lcom/google/android/gms/common/api/internal/bf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/internal/bf;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/bf;->b(Lcom/google/android/gms/common/api/internal/bf;)Lcom/google/android/gms/common/api/internal/bh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/bf;->b(Lcom/google/android/gms/common/api/internal/bf;)Lcom/google/android/gms/common/api/internal/bh;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/api/internal/bh;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/bh;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bg;->a:Lcom/google/android/gms/common/api/z;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/bf;->a(Lcom/google/android/gms/common/api/internal/bf;Lcom/google/android/gms/common/api/z;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/bf;->c(Lcom/google/android/gms/common/api/internal/bf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/internal/bf;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bg;->a:Lcom/google/android/gms/common/api/z;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/internal/bf;->a(Lcom/google/android/gms/common/api/internal/bf;Lcom/google/android/gms/common/api/z;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/bf;->c(Lcom/google/android/gms/common/api/internal/bf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bf;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/internal/bf;)V

    :cond_1
    throw v1
.end method
