.class Landroid/support/v7/widget/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/bt;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/br;->a:Landroid/graphics/RectF;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroid/support/v7/widget/fs;
    .locals 6

    .prologue
    .line 96
    new-instance v0, Landroid/support/v7/widget/fs;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/fs;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v0
.end method

.method private d(Landroid/support/v7/widget/bq;)Landroid/support/v7/widget/fs;
    .locals 1

    .prologue
    .line 174
    invoke-interface {p1}, Landroid/support/v7/widget/bq;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fs;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/support/v7/widget/bs;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bs;-><init>(Landroid/support/v7/widget/br;)V

    sput-object v0, Landroid/support/v7/widget/fs;->c:Landroid/support/v7/widget/ft;

    .line 81
    return-void
.end method

.method public a(Landroid/support/v7/widget/bq;)V
    .locals 4

    .prologue
    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 103
    invoke-direct {p0, p1}, Landroid/support/v7/widget/br;->d(Landroid/support/v7/widget/bq;)Landroid/support/v7/widget/fs;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/fs;->a(Landroid/graphics/Rect;)V

    .line 104
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/br;->b(Landroid/support/v7/widget/bq;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 105
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/br;->c(Landroid/support/v7/widget/bq;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 104
    invoke-interface {p1, v1, v2}, Landroid/support/v7/widget/bq;->a(II)V

    .line 106
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/support/v7/widget/bq;->a(IIII)V

    .line 108
    return-void
.end method

.method public a(Landroid/support/v7/widget/bq;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/br;->a(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroid/support/v7/widget/fs;

    move-result-object v0

    .line 88
    invoke-interface {p1}, Landroid/support/v7/widget/bq;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/fs;->a(Z)V

    .line 89
    invoke-interface {p1, v0}, Landroid/support/v7/widget/bq;->a(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/bq;)V

    .line 91
    return-void
.end method

.method public b(Landroid/support/v7/widget/bq;)F
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0, p1}, Landroid/support/v7/widget/br;->d(Landroid/support/v7/widget/bq;)Landroid/support/v7/widget/fs;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/fs;->a()F

    move-result v0

    return v0
.end method

.method public c(Landroid/support/v7/widget/bq;)F
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/support/v7/widget/br;->d(Landroid/support/v7/widget/bq;)Landroid/support/v7/widget/fs;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/fs;->b()F

    move-result v0

    return v0
.end method
