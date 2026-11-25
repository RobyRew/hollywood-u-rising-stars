.class public Lcom/google/android/gms/b/au;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/fb;
.end annotation


# instance fields
.field a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/b/bf;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/b/ax;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/b/ax;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/au;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/ax;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/b/ax;->a:Lcom/google/android/gms/b/ax;

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/b/bf;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/au;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
