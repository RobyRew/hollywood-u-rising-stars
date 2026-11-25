.class Lcom/google/android/gms/b/cv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/ct;

.field private final b:Lcom/google/android/gms/b/hr;

.field private final c:Lcom/google/android/gms/b/jz;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/ct;Lcom/google/android/gms/b/hr;Lcom/google/android/gms/b/jz;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/cv;->a:Lcom/google/android/gms/b/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/b/cv;->b:Lcom/google/android/gms/b/hr;

    iput-object p3, p0, Lcom/google/android/gms/b/cv;->c:Lcom/google/android/gms/b/jz;

    iput-object p4, p0, Lcom/google/android/gms/b/cv;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/cv;->b:Lcom/google/android/gms/b/hr;

    invoke-virtual {v0}, Lcom/google/android/gms/b/hr;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/b/cv;->b:Lcom/google/android/gms/b/hr;

    const-string/jumbo v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hr;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/cv;->c:Lcom/google/android/gms/b/jz;

    invoke-virtual {v0}, Lcom/google/android/gms/b/jz;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/b/cv;->b:Lcom/google/android/gms/b/hr;

    iget-object v1, p0, Lcom/google/android/gms/b/cv;->c:Lcom/google/android/gms/b/jz;

    iget-object v1, v1, Lcom/google/android/gms/b/jz;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hr;->a(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/b/cv;->c:Lcom/google/android/gms/b/jz;

    iget-boolean v0, v0, Lcom/google/android/gms/b/jz;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/b/cv;->b:Lcom/google/android/gms/b/hr;

    const-string/jumbo v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hr;->b(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/b/cv;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/cv;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/cv;->b:Lcom/google/android/gms/b/hr;

    iget-object v1, p0, Lcom/google/android/gms/b/cv;->c:Lcom/google/android/gms/b/jz;

    iget-object v1, v1, Lcom/google/android/gms/b/jz;->c:Lcom/google/android/gms/b/qg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hr;->b(Lcom/google/android/gms/b/qg;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/b/cv;->b:Lcom/google/android/gms/b/hr;

    const-string/jumbo v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/hr;->c(Ljava/lang/String;)V

    goto :goto_2
.end method
