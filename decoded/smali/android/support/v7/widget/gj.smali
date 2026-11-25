.class public Landroid/support/v7/widget/gj;
.super Landroid/support/v7/widget/ex;
.source "SourceFile"


# instance fields
.field a:Landroid/support/v7/widget/gm;

.field b:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 2419
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ex;-><init>(II)V

    .line 2420
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 2415
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ex;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2416
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 2427
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ex;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2428
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .prologue
    .line 2423
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ex;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2424
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 2453
    iget-boolean v0, p0, Landroid/support/v7/widget/gj;->b:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 2463
    iget-object v0, p0, Landroid/support/v7/widget/gj;->a:Landroid/support/v7/widget/gm;

    if-nez v0, :cond_0

    .line 2464
    const/4 v0, -0x1

    .line 2466
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/gj;->a:Landroid/support/v7/widget/gm;

    iget v0, v0, Landroid/support/v7/widget/gm;->e:I

    goto :goto_0
.end method
