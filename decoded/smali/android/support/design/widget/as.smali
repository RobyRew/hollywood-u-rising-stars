.class Landroid/support/design/widget/as;
.super Landroid/support/design/widget/bc;
.source "SourceFile"


# instance fields
.field a:Landroid/support/design/widget/bl;

.field private final p:Landroid/support/design/widget/br;


# direct methods
.method constructor <init>(Landroid/support/design/widget/dd;Landroid/support/design/widget/bm;Landroid/support/design/widget/cl;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/bc;-><init>(Landroid/support/design/widget/dd;Landroid/support/design/widget/bm;Landroid/support/design/widget/cl;)V

    .line 44
    new-instance v0, Landroid/support/design/widget/br;

    invoke-direct {v0}, Landroid/support/design/widget/br;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/as;->p:Landroid/support/design/widget/br;

    .line 47
    iget-object v0, p0, Landroid/support/design/widget/as;->p:Landroid/support/design/widget/br;

    sget-object v1, Landroid/support/design/widget/as;->i:[I

    new-instance v2, Landroid/support/design/widget/aw;

    invoke-direct {v2, p0}, Landroid/support/design/widget/aw;-><init>(Landroid/support/design/widget/as;)V

    .line 48
    invoke-direct {p0, v2}, Landroid/support/design/widget/as;->a(Landroid/support/design/widget/ay;)Landroid/support/design/widget/cf;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/br;->a([ILandroid/support/design/widget/cf;)V

    .line 49
    iget-object v0, p0, Landroid/support/design/widget/as;->p:Landroid/support/design/widget/br;

    sget-object v1, Landroid/support/design/widget/as;->j:[I

    new-instance v2, Landroid/support/design/widget/aw;

    invoke-direct {v2, p0}, Landroid/support/design/widget/aw;-><init>(Landroid/support/design/widget/as;)V

    .line 50
    invoke-direct {p0, v2}, Landroid/support/design/widget/as;->a(Landroid/support/design/widget/ay;)Landroid/support/design/widget/cf;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/br;->a([ILandroid/support/design/widget/cf;)V

    .line 52
    iget-object v0, p0, Landroid/support/design/widget/as;->p:Landroid/support/design/widget/br;

    sget-object v1, Landroid/support/design/widget/as;->k:[I

    new-instance v2, Landroid/support/design/widget/ax;

    invoke-direct {v2, p0}, Landroid/support/design/widget/ax;-><init>(Landroid/support/design/widget/as;)V

    .line 53
    invoke-direct {p0, v2}, Landroid/support/design/widget/as;->a(Landroid/support/design/widget/ay;)Landroid/support/design/widget/cf;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/br;->a([ILandroid/support/design/widget/cf;)V

    .line 55
    iget-object v0, p0, Landroid/support/design/widget/as;->p:Landroid/support/design/widget/br;

    sget-object v1, Landroid/support/design/widget/as;->l:[I

    new-instance v2, Landroid/support/design/widget/av;

    invoke-direct {v2, p0}, Landroid/support/design/widget/av;-><init>(Landroid/support/design/widget/as;)V

    .line 56
    invoke-direct {p0, v2}, Landroid/support/design/widget/as;->a(Landroid/support/design/widget/ay;)Landroid/support/design/widget/cf;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/br;->a([ILandroid/support/design/widget/cf;)V

    .line 57
    return-void
.end method

.method private a(Landroid/support/design/widget/ay;)Landroid/support/design/widget/cf;
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/design/widget/as;->o:Landroid/support/design/widget/cl;

    invoke-interface {v0}, Landroid/support/design/widget/cl;->a()Landroid/support/design/widget/cf;

    move-result-object v0

    .line 210
    sget-object v1, Landroid/support/design/widget/as;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/cf;->a(Landroid/view/animation/Interpolator;)V

    .line 211
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/support/design/widget/cf;->a(J)V

    .line 212
    invoke-virtual {v0, p1}, Landroid/support/design/widget/cf;->a(Landroid/support/design/widget/ci;)V

    .line 213
    invoke-virtual {v0, p1}, Landroid/support/design/widget/cf;->a(Landroid/support/design/widget/ck;)V

    .line 214
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/cf;->a(FF)V

    .line 215
    return-object v0
.end method


# virtual methods
.method a()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/support/design/widget/as;->g:F

    return v0
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/design/widget/as;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/support/design/widget/as;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 104
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/as;->f:Landroid/support/design/widget/ad;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Landroid/support/design/widget/as;->f:Landroid/support/design/widget/ad;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/ad;->a(Landroid/content/res/ColorStateList;)V

    .line 107
    :cond_1
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/design/widget/as;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/support/design/widget/as;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 114
    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/design/widget/as;->a:Landroid/support/design/widget/bl;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/bl;->getPadding(Landroid/graphics/Rect;)Z

    .line 206
    return-void
.end method

.method a(Landroid/support/design/widget/be;Z)V
    .locals 4

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/support/design/widget/as;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/as;->c:I

    .line 155
    iget-object v0, p0, Landroid/support/design/widget/as;->m:Landroid/support/design/widget/dd;

    .line 156
    invoke-virtual {v0}, Landroid/support/design/widget/dd;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/b;->design_fab_out:I

    .line 155
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 157
    sget-object v1, Landroid/support/design/widget/a;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 158
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 159
    new-instance v1, Landroid/support/design/widget/at;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/at;-><init>(Landroid/support/design/widget/as;ZLandroid/support/design/widget/be;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 169
    iget-object v1, p0, Landroid/support/design/widget/as;->m:Landroid/support/design/widget/dd;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/dd;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method a([I)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/design/widget/as;->p:Landroid/support/design/widget/br;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/br;->a([I)V

    .line 139
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/design/widget/as;->p:Landroid/support/design/widget/br;

    invoke-virtual {v0}, Landroid/support/design/widget/br;->a()V

    .line 144
    return-void
.end method

.method b(Landroid/support/design/widget/be;Z)V
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/support/design/widget/as;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/as;->c:I

    .line 181
    iget-object v0, p0, Landroid/support/design/widget/as;->m:Landroid/support/design/widget/dd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/dd;->a(IZ)V

    .line 182
    iget-object v0, p0, Landroid/support/design/widget/as;->m:Landroid/support/design/widget/dd;

    .line 183
    invoke-virtual {v0}, Landroid/support/design/widget/dd;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/b;->design_fab_in:I

    .line 182
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 184
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 185
    sget-object v1, Landroid/support/design/widget/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 186
    new-instance v1, Landroid/support/design/widget/au;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/au;-><init>(Landroid/support/design/widget/as;Landroid/support/design/widget/be;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 195
    iget-object v1, p0, Landroid/support/design/widget/as;->m:Landroid/support/design/widget/dd;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/dd;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
