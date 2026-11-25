.class Landroid/support/design/widget/bf;
.super Landroid/support/design/widget/az;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private p:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method constructor <init>(Landroid/support/design/widget/dd;Landroid/support/design/widget/bm;Landroid/support/design/widget/cl;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/az;-><init>(Landroid/support/design/widget/dd;Landroid/support/design/widget/bm;Landroid/support/design/widget/cl;)V

    .line 45
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/design/widget/bf;->m:Landroid/support/design/widget/dd;

    invoke-virtual {v0}, Landroid/support/design/widget/dd;->getElevation()F

    move-result v0

    return v0
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 197
    iget-object v0, p0, Landroid/support/design/widget/bf;->n:Landroid/support/design/widget/bm;

    invoke-interface {v0}, Landroid/support/design/widget/bm;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Landroid/support/design/widget/bf;->n:Landroid/support/design/widget/bm;

    invoke-interface {v0}, Landroid/support/design/widget/bm;->a()F

    move-result v0

    .line 199
    invoke-virtual {p0}, Landroid/support/design/widget/bf;->a()F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/bf;->h:F

    add-float/2addr v1, v2

    .line 201
    invoke-static {v1, v0, v4}, Landroid/support/design/widget/bl;->b(FFZ)F

    move-result v2

    float-to-double v2, v2

    .line 200
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 203
    invoke-static {v1, v0, v4}, Landroid/support/design/widget/bl;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 202
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 204
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method a([I)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method b()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method b(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/design/widget/bf;->n:Landroid/support/design/widget/bm;

    invoke-interface {v0}, Landroid/support/design/widget/bm;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Landroid/support/design/widget/bf;->e:Landroid/graphics/drawable/Drawable;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v0, p0, Landroid/support/design/widget/bf;->p:Landroid/graphics/drawable/InsetDrawable;

    .line 164
    iget-object v0, p0, Landroid/support/design/widget/bf;->n:Landroid/support/design/widget/bm;

    iget-object v1, p0, Landroid/support/design/widget/bf;->p:Landroid/graphics/drawable/InsetDrawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/bm;->a(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/bf;->n:Landroid/support/design/widget/bm;

    iget-object v1, p0, Landroid/support/design/widget/bf;->e:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/bm;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method
