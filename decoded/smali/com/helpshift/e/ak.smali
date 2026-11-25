.class public Lcom/helpshift/e/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 14
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 15
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    return v1
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/helpshift/e;->e:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 21
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-static {p0, p2}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/helpshift/e;->f:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 25
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/helpshift/e;->g:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 29
    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/helpshift/e;->h:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 33
    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/helpshift/e;->i:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 37
    return-void
.end method

.method public static f(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/helpshift/e;->j:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 41
    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/helpshift/e;->k:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 45
    return-void
.end method

.method public static h(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/helpshift/e;->l:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 49
    return-void
.end method

.method public static i(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/helpshift/e;->m:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 53
    return-void
.end method

.method public static j(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/helpshift/e;->n:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 57
    return-void
.end method

.method public static k(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/helpshift/e;->o:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 61
    return-void
.end method
