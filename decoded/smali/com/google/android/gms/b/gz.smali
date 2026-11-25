.class Lcom/google/android/gms/b/gz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/l;


# instance fields
.field private a:Lcom/google/android/gms/b/gu;

.field private b:Lcom/google/android/gms/ads/internal/overlay/l;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/gu;Lcom/google/android/gms/ads/internal/overlay/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/gz;->a:Lcom/google/android/gms/b/gu;

    iput-object p2, p0, Lcom/google/android/gms/b/gz;->b:Lcom/google/android/gms/ads/internal/overlay/l;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/gz;->b:Lcom/google/android/gms/ads/internal/overlay/l;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/l;->a()V

    iget-object v0, p0, Lcom/google/android/gms/b/gz;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->c()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/gz;->b:Lcom/google/android/gms/ads/internal/overlay/l;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/l;->d()V

    iget-object v0, p0, Lcom/google/android/gms/b/gz;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->d()V

    return-void
.end method
