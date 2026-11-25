.class public Lcom/google/android/gms/b/gt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/fb;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/b/gu;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/ViewGroup;

.field private d:Lcom/google/android/gms/ads/internal/overlay/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/b/gu;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/b/gt;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/b/gu;Lcom/google/android/gms/ads/internal/overlay/p;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/b/gu;Lcom/google/android/gms/ads/internal/overlay/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/gt;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/b/gt;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/b/gt;->a:Lcom/google/android/gms/b/gu;

    iput-object p4, p0, Lcom/google/android/gms/b/gt;->d:Lcom/google/android/gms/ads/internal/overlay/p;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/internal/overlay/p;
    .locals 1

    const-string/jumbo v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bl;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/gt;->d:Lcom/google/android/gms/ads/internal/overlay/p;

    return-object v0
.end method

.method public a(IIII)V
    .locals 1

    const-string/jumbo v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bl;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/gt;->d:Lcom/google/android/gms/ads/internal/overlay/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/gt;->d:Lcom/google/android/gms/ads/internal/overlay/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/p;->a(IIII)V

    :cond_0
    return-void
.end method

.method public a(IIIII)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/b/gt;->d:Lcom/google/android/gms/ads/internal/overlay/p;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/gt;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->u()Lcom/google/android/gms/b/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/b/be;->a()Lcom/google/android/gms/b/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/gt;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v1}, Lcom/google/android/gms/b/gu;->t()Lcom/google/android/gms/b/bb;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "vpr"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/b/aw;->a(Lcom/google/android/gms/b/bf;Lcom/google/android/gms/b/bb;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/b/gt;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->u()Lcom/google/android/gms/b/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/b/be;->a()Lcom/google/android/gms/b/bf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/aw;->a(Lcom/google/android/gms/b/bf;)Lcom/google/android/gms/b/bb;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/p;

    iget-object v1, p0, Lcom/google/android/gms/b/gt;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/b/gt;->a:Lcom/google/android/gms/b/gu;

    iget-object v3, p0, Lcom/google/android/gms/b/gt;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v3}, Lcom/google/android/gms/b/gu;->u()Lcom/google/android/gms/b/be;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/b/be;->a()Lcom/google/android/gms/b/bf;

    move-result-object v4

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/p;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/gu;ILcom/google/android/gms/b/bf;Lcom/google/android/gms/b/bb;)V

    iput-object v0, p0, Lcom/google/android/gms/b/gt;->d:Lcom/google/android/gms/ads/internal/overlay/p;

    iget-object v0, p0, Lcom/google/android/gms/b/gt;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/b/gt;->d:Lcom/google/android/gms/ads/internal/overlay/p;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/b/gt;->d:Lcom/google/android/gms/ads/internal/overlay/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/p;->a(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/b/gt;->a:Lcom/google/android/gms/b/gu;

    invoke-interface {v0}, Lcom/google/android/gms/b/gu;->k()Lcom/google/android/gms/b/gv;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/b/gv;->a(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const-string/jumbo v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bl;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/gt;->d:Lcom/google/android/gms/ads/internal/overlay/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/gt;->d:Lcom/google/android/gms/ads/internal/overlay/p;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/p;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const-string/jumbo v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bl;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/gt;->d:Lcom/google/android/gms/ads/internal/overlay/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/gt;->d:Lcom/google/android/gms/ads/internal/overlay/p;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/p;->g()V

    :cond_0
    return-void
.end method
