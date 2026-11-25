.class Lcom/google/android/gms/location/internal/h;
.super Lcom/google/android/gms/location/internal/i;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/android/gms/location/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/f;Lcom/google/android/gms/common/api/n;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/h;->b:Lcom/google/android/gms/location/internal/f;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/h;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/i;-><init>(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/h;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/internal/y;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/h;->a(Lcom/google/android/gms/location/internal/y;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/location/internal/y;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/h;->a:Ljava/util/List;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/location/internal/y;->a(Ljava/util/List;Lcom/google/android/gms/common/api/internal/d;)V

    return-void
.end method
