.class Lcom/google/android/gms/b/hc;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/gms/b/gu;


# annotations
.annotation runtime Lcom/google/android/gms/b/fb;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/b/gu;

.field private final b:Lcom/google/android/gms/b/gt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/gu;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/b/gu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    new-instance v0, Lcom/google/android/gms/b/gt;

    invoke-interface {p1}, Lcom/google/android/gms/b/gu;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/b/gt;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/b/gu;)V

    iput-object v0, p0, Lcom/google/android/gms/b/hc;->b:Lcom/google/android/gms/b/gt;

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->k()Lcom/google/android/gms/b/gv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/b/gv;->a(Lcom/google/android/gms/b/gu;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/hc;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->a()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->a(I)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->a(Lcom/google/android/gms/ads/internal/overlay/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/b/gu;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/b/gu;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->a(Z)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->b(I)V

    return-void
.end method

.method public b(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->b(Lcom/google/android/gms/ads/internal/overlay/c;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->b(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->c()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->c(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->d()V

    return-void
.end method

.method public e()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->e()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->f()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/google/android/gms/ads/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->g()Lcom/google/android/gms/ads/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/android/gms/ads/internal/overlay/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->h()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/google/android/gms/ads/internal/overlay/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->i()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/google/android/gms/b/gv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->k()Lcom/google/android/gms/b/gv;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->l()Z

    move-result v0

    return v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/b/gu;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public m()Lcom/google/android/gms/b/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->m()Lcom/google/android/gms/b/i;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->n()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->o()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->b:Lcom/google/android/gms/b/gt;

    invoke-virtual {v0}, Lcom/google/android/gms/b/gt;->b()V

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->onResume()V

    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->p()Z

    move-result v0

    return v0
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->b:Lcom/google/android/gms/b/gt;

    invoke-virtual {v0}, Lcom/google/android/gms/b/gt;->c()V

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->q()V

    return-void
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->r()Z

    move-result v0

    return v0
.end method

.method public s()Lcom/google/android/gms/b/gt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->b:Lcom/google/android/gms/b/gt;

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->setBackgroundColor(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/gu;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public t()Lcom/google/android/gms/b/bb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->t()Lcom/google/android/gms/b/bb;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/google/android/gms/b/be;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->u()Lcom/google/android/gms/b/be;

    move-result-object v0

    return-object v0
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->v()V

    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/hc;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->w()V

    return-void
.end method
