.class Lcom/google/android/gms/b/fr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/b/fq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/fq;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/fr;->b:Lcom/google/android/gms/b/fq;

    iput-object p2, p0, Lcom/google/android/gms/b/fr;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/b/fr;->b:Lcom/google/android/gms/b/fq;

    invoke-static {v0}, Lcom/google/android/gms/b/fq;->a(Lcom/google/android/gms/b/fq;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/fr;->b:Lcom/google/android/gms/b/fq;

    iget-object v2, p0, Lcom/google/android/gms/b/fr;->b:Lcom/google/android/gms/b/fq;

    iget-object v3, p0, Lcom/google/android/gms/b/fr;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/b/fq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/b/fq;->a(Lcom/google/android/gms/b/fq;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/b/fr;->b:Lcom/google/android/gms/b/fq;

    invoke-static {v0}, Lcom/google/android/gms/b/fq;->a(Lcom/google/android/gms/b/fq;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
