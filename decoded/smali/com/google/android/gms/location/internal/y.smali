.class public Lcom/google/android/gms/location/internal/y;
.super Lcom/google/android/gms/location/internal/a;


# instance fields
.field private final d:Lcom/google/android/gms/location/internal/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;Ljava/lang/String;Lcom/google/android/gms/common/internal/v;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/location/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;Ljava/lang/String;Lcom/google/android/gms/common/internal/v;)V

    new-instance v0, Lcom/google/android/gms/location/internal/v;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/y;->c:Lcom/google/android/gms/location/internal/ae;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/internal/v;-><init>(Landroid/content/Context;Lcom/google/android/gms/location/internal/ae;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/y;->d:Lcom/google/android/gms/location/internal/v;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/GeofencingRequest;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/common/api/internal/d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/y;->g()V

    const-string/jumbo v0, "geofencingRequest can\'t be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PendingIntent must be specified."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ResultHolder not provided."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/location/internal/z;

    invoke-direct {v1, p3}, Lcom/google/android/gms/location/internal/z;-><init>(Lcom/google/android/gms/common/api/internal/d;)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/y;->zzqJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/p;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/location/internal/p;->a(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/m;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/google/android/gms/common/api/internal/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/common/api/internal/d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/y;->g()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "geofenceRequestIds can\'t be null nor empty."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/bl;->b(ZLjava/lang/Object;)V

    const-string/jumbo v0, "ResultHolder not provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/bl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/location/internal/aa;

    invoke-direct {v2, p2}, Lcom/google/android/gms/location/internal/aa;-><init>(Lcom/google/android/gms/common/api/internal/d;)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/y;->zzqJ()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/p;

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/y;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/location/internal/p;->a([Ljava/lang/String;Lcom/google/android/gms/location/internal/m;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public disconnect()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/location/internal/y;->d:Lcom/google/android/gms/location/internal/v;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/y;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/location/internal/y;->d:Lcom/google/android/gms/location/internal/v;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/v;->a()V

    iget-object v0, p0, Lcom/google/android/gms/location/internal/y;->d:Lcom/google/android/gms/location/internal/v;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/v;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/location/internal/a;->disconnect()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LocationClientImpl"

    const-string/jumbo v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
