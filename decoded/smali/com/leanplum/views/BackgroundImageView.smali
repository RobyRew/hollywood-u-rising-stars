.class public Lcom/leanplum/views/BackgroundImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Z

.field private c:Landroid/graphics/Matrix;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leanplum/views/BackgroundImageView;->a:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/leanplum/views/BackgroundImageView;->c:Landroid/graphics/Matrix;

    .line 38
    invoke-direct {p0}, Lcom/leanplum/views/BackgroundImageView;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leanplum/views/BackgroundImageView;->a:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/leanplum/views/BackgroundImageView;->c:Landroid/graphics/Matrix;

    .line 33
    invoke-direct {p0}, Lcom/leanplum/views/BackgroundImageView;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leanplum/views/BackgroundImageView;->a:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/leanplum/views/BackgroundImageView;->c:Landroid/graphics/Matrix;

    .line 43
    invoke-direct {p0}, Lcom/leanplum/views/BackgroundImageView;->a()V

    .line 44
    iput-boolean p2, p0, Lcom/leanplum/views/BackgroundImageView;->b:Z

    .line 45
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/leanplum/views/BackgroundImageView;->a:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/leanplum/views/BackgroundImageView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object v0, p0, Lcom/leanplum/views/BackgroundImageView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    return-void
.end method


# virtual methods
.method public loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x2

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_0

    .line 71
    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 77
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/leanplum/views/BackgroundImageView;->d:Z

    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 79
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    iget-boolean v0, p0, Lcom/leanplum/views/BackgroundImageView;->b:Z

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-boolean v0, p0, Lcom/leanplum/views/BackgroundImageView;->d:Z

    if-eqz v0, :cond_1

    .line 60
    iput-boolean v2, p0, Lcom/leanplum/views/BackgroundImageView;->d:Z

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0, p0}, Lcom/leanplum/views/BackgroundImageView;->loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 65
    sget v1, Lcom/leanplum/utils/SizeUtil;->dp20:I

    invoke-static {v0, v1}, Lcom/leanplum/utils/BitmapUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/leanplum/views/BackgroundImageView;->c:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/leanplum/views/BackgroundImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method
