.class public abstract Landroid/support/design/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/design/widget/h",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Landroid/os/Handler;


# instance fields
.field final b:Landroid/support/design/widget/w;

.field final c:Landroid/support/design/widget/bp;

.field private final d:Landroid/view/ViewGroup;

.field private final e:Landroid/support/design/widget/t;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/r",
            "<TB;>;>;"
        }
    .end annotation
.end field

.field private final g:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/i;

    invoke-direct {v2}, Landroid/support/design/widget/i;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/h;->a:Landroid/os/Handler;

    .line 186
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/h;)Landroid/support/design/widget/t;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/design/widget/h;->e:Landroid/support/design/widget/t;

    return-object v0
.end method

.method private d(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 530
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    .line 532
    invoke-virtual {v1}, Landroid/support/design/widget/w;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    .line 533
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 534
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/q;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/q;-><init>(Landroid/support/design/widget/h;I)V

    .line 535
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 565
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-virtual {v0}, Landroid/support/design/widget/w;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/b;->design_snackbar_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 549
    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 550
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 551
    new-instance v1, Landroid/support/design/widget/j;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/j;-><init>(Landroid/support/design/widget/h;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 563
    iget-object v1, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/w;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 2

    .prologue
    .line 326
    invoke-static {}, Landroid/support/design/widget/bn;->a()Landroid/support/design/widget/bn;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/h;->c:Landroid/support/design/widget/bp;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/bn;->a(Landroid/support/design/widget/bp;I)V

    .line 327
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 380
    invoke-static {}, Landroid/support/design/widget/bn;->a()Landroid/support/design/widget/bn;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/h;->c:Landroid/support/design/widget/bp;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bn;->e(Landroid/support/design/widget/bp;)Z

    move-result v0

    return v0
.end method

.method final b()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-virtual {v0}, Landroid/support/design/widget/w;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-virtual {v0}, Landroid/support/design/widget/w;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 400
    instance-of v1, v0, Landroid/support/design/widget/aj;

    if-eqz v1, :cond_0

    .line 402
    check-cast v0, Landroid/support/design/widget/aj;

    .line 404
    new-instance v1, Landroid/support/design/widget/s;

    invoke-direct {v1, p0}, Landroid/support/design/widget/s;-><init>(Landroid/support/design/widget/h;)V

    .line 405
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Landroid/support/design/widget/s;->a(F)V

    .line 406
    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/support/design/widget/s;->b(F)V

    .line 407
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/s;->a(I)V

    .line 408
    new-instance v2, Landroid/support/design/widget/k;

    invoke-direct {v2, p0}, Landroid/support/design/widget/k;-><init>(Landroid/support/design/widget/h;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/s;->a(Landroid/support/design/widget/bv;)V

    .line 431
    invoke-virtual {v0, v1}, Landroid/support/design/widget/aj;->a(Landroid/support/design/widget/ag;)V

    .line 433
    const/16 v1, 0x50

    iput v1, v0, Landroid/support/design/widget/aj;->g:I

    .line 436
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 439
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    new-instance v1, Landroid/support/design/widget/l;

    invoke-direct {v1, p0}, Landroid/support/design/widget/l;-><init>(Landroid/support/design/widget/h;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/w;->a(Landroid/support/design/widget/u;)V

    .line 461
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    invoke-virtual {p0}, Landroid/support/design/widget/h;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    invoke-virtual {p0}, Landroid/support/design/widget/h;->c()V

    .line 486
    :goto_0
    return-void

    .line 467
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/h;->d()V

    goto :goto_0

    .line 471
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    new-instance v1, Landroid/support/design/widget/n;

    invoke-direct {v1, p0}, Landroid/support/design/widget/n;-><init>(Landroid/support/design/widget/h;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/w;->a(Landroid/support/design/widget/v;)V

    goto :goto_0
.end method

.method final b(I)V
    .locals 1

    .prologue
    .line 568
    invoke-virtual {p0}, Landroid/support/design/widget/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-virtual {v0}, Landroid/support/design/widget/w;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 569
    invoke-direct {p0, p1}, Landroid/support/design/widget/h;->d(I)V

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/h;->c(I)V

    goto :goto_0
.end method

.method c()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 489
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 490
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    iget-object v1, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-virtual {v1}, Landroid/support/design/widget/w;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 491
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 492
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    .line 493
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 494
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/o;

    invoke-direct {v1, p0}, Landroid/support/design/widget/o;-><init>(Landroid/support/design/widget/h;)V

    .line 495
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 527
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-virtual {v0}, Landroid/support/design/widget/w;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/b;->design_snackbar_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 511
    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 512
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 513
    new-instance v1, Landroid/support/design/widget/p;

    invoke-direct {v1, p0}, Landroid/support/design/widget/p;-><init>(Landroid/support/design/widget/h;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 525
    iget-object v1, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/w;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method c(I)V
    .locals 2

    .prologue
    .line 590
    invoke-static {}, Landroid/support/design/widget/bn;->a()Landroid/support/design/widget/bn;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/h;->c:Landroid/support/design/widget/bp;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bn;->a(Landroid/support/design/widget/bp;)V

    .line 591
    iget-object v0, p0, Landroid/support/design/widget/h;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Landroid/support/design/widget/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 595
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 596
    iget-object v0, p0, Landroid/support/design/widget/h;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/r;

    invoke-virtual {v0, p0, p1}, Landroid/support/design/widget/r;->a(Ljava/lang/Object;I)V

    .line 595
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 599
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 605
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/w;->setVisibility(I)V

    .line 608
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-virtual {v0}, Landroid/support/design/widget/w;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 609
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 610
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/h;->b:Landroid/support/design/widget/w;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 612
    :cond_2
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 577
    invoke-static {}, Landroid/support/design/widget/bn;->a()Landroid/support/design/widget/bn;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/h;->c:Landroid/support/design/widget/bp;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bn;->b(Landroid/support/design/widget/bp;)V

    .line 578
    iget-object v0, p0, Landroid/support/design/widget/h;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Landroid/support/design/widget/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 582
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 583
    iget-object v0, p0, Landroid/support/design/widget/h;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/r;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/r;->a(Ljava/lang/Object;)V

    .line 582
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 586
    :cond_0
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
