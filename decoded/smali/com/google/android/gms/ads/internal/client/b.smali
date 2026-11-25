.class public Lcom/google/android/gms/ads/internal/client/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/fb;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/ads/internal/client/l;

.field private b:[Lcom/google/android/gms/ads/b;


# virtual methods
.method public a()Lcom/google/android/gms/ads/b;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->a:Lcom/google/android/gms/ads/internal/client/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->a:Lcom/google/android/gms/ads/internal/client/l;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/l;->a()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->a()Lcom/google/android/gms/ads/b;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->b:[Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->b:[Lcom/google/android/gms/ads/b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
