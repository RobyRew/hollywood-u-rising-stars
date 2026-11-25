.class public Lcom/google/android/gms/nearby/messages/devices/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/nearby/messages/devices/e;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/nearby/messages/devices/e;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/devices/d;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/messages/devices/e;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/d;->a:Lcom/google/android/gms/nearby/messages/devices/e;

    return-void
.end method

.method private static a([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "iBeacon ID must be a UUID, a major, and a minor (20 total bytes)."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/bl;->b(ZLjava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/d;->a:Lcom/google/android/gms/nearby/messages/devices/e;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/devices/e;->c()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public b()S
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/d;->a:Lcom/google/android/gms/nearby/messages/devices/e;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/devices/e;->d()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public c()S
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/d;->a:Lcom/google/android/gms/nearby/messages/devices/e;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/devices/e;->e()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/nearby/messages/devices/d;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/nearby/messages/devices/d;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/d;->a:Lcom/google/android/gms/nearby/messages/devices/e;

    iget-object v1, p1, Lcom/google/android/gms/nearby/messages/devices/d;->a:Lcom/google/android/gms/nearby/messages/devices/e;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/bi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/devices/d;->a:Lcom/google/android/gms/nearby/messages/devices/e;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bi;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IBeaconId{proximityUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/devices/d;->a()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", major="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/devices/d;->b()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", minor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/devices/d;->c()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
