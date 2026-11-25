.class public Lcom/google/android/gms/b/bm;
.super Lcom/google/android/gms/a/e;


# annotations
.annotation runtime Lcom/google/android/gms/b/fb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/e",
        "<",
        "Lcom/google/android/gms/b/bj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bj;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/b/bk;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bj;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/bm;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/bj;

    move-result-object v0

    return-object v0
.end method
