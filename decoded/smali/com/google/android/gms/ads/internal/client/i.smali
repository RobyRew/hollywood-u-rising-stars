.class public Lcom/google/android/gms/ads/internal/client/i;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/fb;
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/google/android/gms/ads/internal/client/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/ads/internal/client/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/a;->a()V

    sget-object v0, Lcom/google/android/gms/ads/internal/client/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Lcom/google/android/gms/ads/internal/client/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/client/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/j;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/i;->b:Lcom/google/android/gms/ads/internal/client/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to instantiate ClientApi class."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/d;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/i;->b:Lcom/google/android/gms/ads/internal/client/j;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "No client jar implementation found."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/d;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/i;->b:Lcom/google/android/gms/ads/internal/client/j;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lcom/google/android/gms/b/eq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/i;->b:Lcom/google/android/gms/ads/internal/client/j;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/j;->a(Landroid/app/Activity;)Lcom/google/android/gms/b/eq;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/app/Activity;)Lcom/google/android/gms/b/ei;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/i;->b:Lcom/google/android/gms/ads/internal/client/j;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/j;->b(Landroid/app/Activity;)Lcom/google/android/gms/b/ei;

    move-result-object v0

    return-object v0
.end method
