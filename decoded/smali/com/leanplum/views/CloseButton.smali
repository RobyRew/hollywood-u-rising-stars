.class public Lcom/leanplum/views/CloseButton;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leanplum/views/CloseButton;->a:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leanplum/views/CloseButton;->b:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leanplum/views/CloseButton;->c:Landroid/graphics/Paint;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leanplum/views/CloseButton;->i:Z

    .line 32
    invoke-direct {p0}, Lcom/leanplum/views/CloseButton;->a()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leanplum/views/CloseButton;->a:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leanplum/views/CloseButton;->b:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/leanplum/views/CloseButton;->c:Landroid/graphics/Paint;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leanplum/views/CloseButton;->i:Z

    .line 37
    invoke-direct {p0}, Lcom/leanplum/views/CloseButton;->a()V

    .line 38
    return-void
.end method

.method private final a()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const v4, 0x3f2aaaab

    const v3, 0x3eaaaaab

    const/4 v2, 0x1

    .line 41
    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->a:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->b:Landroid/graphics/Paint;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    sget v0, Lcom/leanplum/utils/SizeUtil;->dp30:I

    int-to-float v0, v0

    iput v0, p0, Lcom/leanplum/views/CloseButton;->d:F

    .line 54
    iget v0, p0, Lcom/leanplum/views/CloseButton;->d:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/leanplum/views/CloseButton;->e:F

    .line 55
    iget v0, p0, Lcom/leanplum/views/CloseButton;->d:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/leanplum/views/CloseButton;->g:F

    .line 56
    iget v0, p0, Lcom/leanplum/views/CloseButton;->d:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/leanplum/views/CloseButton;->f:F

    .line 57
    iget v0, p0, Lcom/leanplum/views/CloseButton;->d:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/leanplum/views/CloseButton;->h:F

    .line 58
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    iget-boolean v0, p0, Lcom/leanplum/views/CloseButton;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->b:Landroid/graphics/Paint;

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/leanplum/views/CloseButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/leanplum/views/CloseButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/leanplum/views/CloseButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 91
    iget v1, p0, Lcom/leanplum/views/CloseButton;->e:F

    iget v2, p0, Lcom/leanplum/views/CloseButton;->f:F

    iget v3, p0, Lcom/leanplum/views/CloseButton;->g:F

    iget v4, p0, Lcom/leanplum/views/CloseButton;->h:F

    iget-object v5, p0, Lcom/leanplum/views/CloseButton;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 92
    iget v1, p0, Lcom/leanplum/views/CloseButton;->g:F

    iget v2, p0, Lcom/leanplum/views/CloseButton;->f:F

    iget v3, p0, Lcom/leanplum/views/CloseButton;->e:F

    iget v4, p0, Lcom/leanplum/views/CloseButton;->h:F

    iget-object v5, p0, Lcom/leanplum/views/CloseButton;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 93
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/leanplum/views/CloseButton;->a:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    .line 83
    iget v0, p0, Lcom/leanplum/views/CloseButton;->d:F

    float-to-int v0, v0

    iget v1, p0, Lcom/leanplum/views/CloseButton;->d:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/leanplum/views/CloseButton;->setMeasuredDimension(II)V

    .line 84
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iput-boolean v0, p0, Lcom/leanplum/views/CloseButton;->i:Z

    .line 69
    invoke-virtual {p0}, Lcom/leanplum/views/CloseButton;->invalidate()V

    .line 77
    :goto_0
    return v0

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 72
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/leanplum/views/CloseButton;->i:Z

    .line 73
    invoke-virtual {p0}, Lcom/leanplum/views/CloseButton;->invalidate()V

    .line 74
    invoke-virtual {p0}, Lcom/leanplum/views/CloseButton;->performClick()Z

    goto :goto_0

    .line 77
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method
