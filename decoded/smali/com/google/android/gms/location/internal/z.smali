.class final Lcom/google/android/gms/location/internal/z;
.super Lcom/google/android/gms/location/internal/n;


# instance fields
.field private a:Lcom/google/android/gms/common/api/internal/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/internal/n;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/internal/z;->a:Lcom/google/android/gms/common/api/internal/d;

    return-void
.end method


# virtual methods
.method public a(ILandroid/app/PendingIntent;)V
    .locals 2

    const-string/jumbo v0, "LocationClientImpl"

    const-string/jumbo v1, "Unexpected call to onRemoveGeofencesByPendingIntentResult"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(I[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/z;->a:Lcom/google/android/gms/common/api/internal/d;

    if-nez v0, :cond_0

    const-string/jumbo v0, "LocationClientImpl"

    const-string/jumbo v1, "onAddGeofenceResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/location/p;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/location/p;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/z;->a:Lcom/google/android/gms/common/api/internal/d;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/internal/d;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/internal/z;->a:Lcom/google/android/gms/common/api/internal/d;

    goto :goto_0
.end method

.method public b(I[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "LocationClientImpl"

    const-string/jumbo v1, "Unexpected call to onRemoveGeofencesByRequestIdsResult"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
