.class public Lcom/google/android/gms/b/hb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/fb;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/b/i;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/bf;Lcom/google/android/gms/ads/internal/b;)Lcom/google/android/gms/b/gu;
    .locals 2

    new-instance v0, Lcom/google/android/gms/b/hc;

    invoke-static/range {p1 .. p8}, Lcom/google/android/gms/b/hd;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/b/i;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/bf;Lcom/google/android/gms/ads/internal/b;)Lcom/google/android/gms/b/hd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/b/hc;-><init>(Lcom/google/android/gms/b/gu;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->e()Lcom/google/android/gms/b/fs;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Lcom/google/android/gms/b/fs;->a(Lcom/google/android/gms/b/gu;Z)Lcom/google/android/gms/b/gv;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/gu;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/g;->e()Lcom/google/android/gms/b/fs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/fs;->c(Lcom/google/android/gms/b/gu;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/b/gu;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method
