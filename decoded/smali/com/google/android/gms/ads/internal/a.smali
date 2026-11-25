.class public Lcom/google/android/gms/ads/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const-class v0, Lcom/google/android/gms/ads/internal/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/internal/client/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lcom/google/android/gms/b/eq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/purchase/c;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public b(Landroid/app/Activity;)Lcom/google/android/gms/b/ei;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/c;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
