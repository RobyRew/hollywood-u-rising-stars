.class Landroid/support/v7/widget/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/bt;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f(Landroid/support/v7/widget/bq;)Landroid/support/v7/widget/fr;
    .locals 1

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/support/v7/widget/bq;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fr;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/bq;)F
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/bq;)Landroid/support/v7/widget/fr;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/fr;->a()F

    move-result v0

    return v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public a(Landroid/support/v7/widget/bq;F)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/bq;)Landroid/support/v7/widget/fr;

    move-result-object v0

    .line 53
    invoke-interface {p1}, Landroid/support/v7/widget/bq;->a()Z

    move-result v1

    invoke-interface {p1}, Landroid/support/v7/widget/bq;->b()Z

    move-result v2

    .line 52
    invoke-virtual {v0, p2, v1, v2}, Landroid/support/v7/widget/fr;->a(FZZ)V

    .line 54
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->e(Landroid/support/v7/widget/bq;)V

    .line 55
    return-void
.end method

.method public a(Landroid/support/v7/widget/bq;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/support/v7/widget/fr;

    invoke-direct {v0, p3, p4}, Landroid/support/v7/widget/fr;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 33
    invoke-interface {p1, v0}, Landroid/support/v7/widget/bq;->a(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-interface {p1}, Landroid/support/v7/widget/bq;->d()Landroid/view/View;

    move-result-object v0

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 37
    invoke-virtual {v0, p5}, Landroid/view/View;->setElevation(F)V

    .line 38
    invoke-virtual {p0, p1, p6}, Landroid/support/v7/widget/bp;->a(Landroid/support/v7/widget/bq;F)V

    .line 39
    return-void
.end method

.method public b(Landroid/support/v7/widget/bq;)F
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->d(Landroid/support/v7/widget/bq;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public c(Landroid/support/v7/widget/bq;)F
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->d(Landroid/support/v7/widget/bq;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public d(Landroid/support/v7/widget/bq;)F
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/support/v7/widget/bp;->f(Landroid/support/v7/widget/bq;)Landroid/support/v7/widget/fr;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/fr;->b()F

    move-result v0

    return v0
.end method

.method public e(Landroid/support/v7/widget/bq;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-interface {p1}, Landroid/support/v7/widget/bq;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-interface {p1, v1, v1, v1, v1}, Landroid/support/v7/widget/bq;->a(IIII)V

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->a(Landroid/support/v7/widget/bq;)F

    move-result v0

    .line 94
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bp;->d(Landroid/support/v7/widget/bq;)F

    move-result v1

    .line 96
    invoke-interface {p1}, Landroid/support/v7/widget/bq;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/fs;->b(FFZ)F

    move-result v2

    float-to-double v2, v2

    .line 95
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 98
    invoke-interface {p1}, Landroid/support/v7/widget/bq;->b()Z

    move-result v3

    invoke-static {v0, v1, v3}, Landroid/support/v7/widget/fs;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 99
    invoke-interface {p1, v2, v0, v2, v0}, Landroid/support/v7/widget/bq;->a(IIII)V

    goto :goto_0
.end method
