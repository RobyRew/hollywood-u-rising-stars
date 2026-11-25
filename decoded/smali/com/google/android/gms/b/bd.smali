.class Lcom/google/android/gms/b/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/hr;

.field final synthetic b:Lcom/google/android/gms/b/bc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/bc;Lcom/google/android/gms/b/hr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/bd;->b:Lcom/google/android/gms/b/bc;

    iput-object p2, p0, Lcom/google/android/gms/b/bd;->a:Lcom/google/android/gms/b/hr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/bd;->b:Lcom/google/android/gms/b/bc;

    invoke-static {v0}, Lcom/google/android/gms/b/bc;->a(Lcom/google/android/gms/b/bc;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/bd;->a:Lcom/google/android/gms/b/hr;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
