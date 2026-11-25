.class public Landroid/support/v7/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# instance fields
.field a:Z

.field private final b:Landroid/support/v7/app/f;

.field private c:Landroid/support/v7/d/a/b;

.field private d:Z

.field private final e:I

.field private final f:I


# direct methods
.method private a(F)V
    .locals 2

    .prologue
    .line 514
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 515
    iget-object v0, p0, Landroid/support/v7/app/e;->c:Landroid/support/v7/d/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/d/a/b;->a(Z)V

    .line 519
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/e;->c:Landroid/support/v7/d/a/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/d/a/b;->a(F)V

    .line 520
    return-void

    .line 516
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Landroid/support/v7/app/e;->c:Landroid/support/v7/d/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/d/a/b;->a(Z)V

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Landroid/support/v7/app/e;->b:Landroid/support/v7/app/f;

    invoke-interface {v0, p1}, Landroid/support/v7/app/f;->a(I)V

    .line 507
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/e;->a(F)V

    .line 452
    iget-boolean v0, p0, Landroid/support/v7/app/e;->a:Z

    if-eqz v0, :cond_0

    .line 453
    iget v0, p0, Landroid/support/v7/app/e;->e:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/e;->a(I)V

    .line 455
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 436
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroid/support/v7/app/e;->a(F)V

    .line 437
    iget-boolean v0, p0, Landroid/support/v7/app/e;->a:Z

    if-eqz v0, :cond_0

    .line 438
    iget v0, p0, Landroid/support/v7/app/e;->f:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/e;->a(I)V

    .line 440
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-boolean v0, p0, Landroid/support/v7/app/e;->d:Z

    if-eqz v0, :cond_0

    .line 421
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/e;->a(F)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v7/app/e;->a(F)V

    goto :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    .prologue
    .line 466
    return-void
.end method
