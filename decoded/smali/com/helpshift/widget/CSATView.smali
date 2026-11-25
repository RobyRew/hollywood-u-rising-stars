.class public Lcom/helpshift/widget/CSATView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# instance fields
.field private a:Lcom/helpshift/widget/a;

.field private b:Landroid/widget/RatingBar;

.field private c:Lcom/helpshift/widget/b;

.field private d:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/widget/CSATView;->c:Lcom/helpshift/widget/b;

    .line 28
    invoke-direct {p0, p1}, Lcom/helpshift/widget/CSATView;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/widget/CSATView;->c:Lcom/helpshift/widget/b;

    .line 33
    invoke-direct {p0, p1}, Lcom/helpshift/widget/CSATView;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/widget/CSATView;->c:Lcom/helpshift/widget/b;

    .line 38
    invoke-direct {p0, p1}, Lcom/helpshift/widget/CSATView;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/helpshift/h;->C:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    new-instance v0, Lcom/helpshift/widget/a;

    invoke-direct {v0, p1}, Lcom/helpshift/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/widget/CSATView;->a:Lcom/helpshift/widget/a;

    .line 44
    return-void
.end method


# virtual methods
.method protected a()Landroid/widget/RatingBar;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->b:Landroid/widget/RatingBar;

    return-object v0
.end method

.method protected a(FLjava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->c:Lcom/helpshift/widget/b;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->c:Lcom/helpshift/widget/b;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/helpshift/widget/b;->a(ILjava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    iget-object v1, p0, Lcom/helpshift/widget/CSATView;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return-void
.end method

.method public a(Lcom/helpshift/widget/b;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/helpshift/widget/CSATView;->c:Lcom/helpshift/widget/b;

    .line 90
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/CSATView;->setVisibility(I)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/widget/CSATView;->a:Lcom/helpshift/widget/a;

    .line 77
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->c:Lcom/helpshift/widget/b;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->c:Lcom/helpshift/widget/b;

    invoke-interface {v0}, Lcom/helpshift/widget/b;->a()V

    .line 80
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 48
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 49
    sget v0, Lcom/helpshift/g;->U:I

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/CSATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/helpshift/widget/CSATView;->b:Landroid/widget/RatingBar;

    .line 50
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->b:Landroid/widget/RatingBar;

    invoke-virtual {v0, p0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 52
    sget v0, Lcom/helpshift/g;->V:I

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/CSATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    sget v1, Lcom/helpshift/g;->W:I

    invoke-virtual {p0, v1}, Lcom/helpshift/widget/CSATView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    sget v2, Lcom/helpshift/g;->X:I

    invoke-virtual {p0, v2}, Lcom/helpshift/widget/CSATView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    invoke-static {v0, v3}, Lcom/helpshift/e/t;->a(Landroid/widget/TextView;F)V

    .line 57
    invoke-static {v1, v3}, Lcom/helpshift/e/t;->a(Landroid/widget/TextView;F)V

    .line 58
    invoke-static {v2, v3}, Lcom/helpshift/e/t;->a(Landroid/widget/TextView;F)V

    .line 60
    sget v0, Lcom/helpshift/g;->Y:I

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/CSATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/helpshift/widget/CSATView;->d:Landroid/widget/RelativeLayout;

    .line 61
    return-void
.end method

.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 1

    .prologue
    .line 65
    if-eqz p3, :cond_0

    .line 66
    iget-object v0, p0, Lcom/helpshift/widget/CSATView;->a:Lcom/helpshift/widget/a;

    invoke-virtual {v0, p0}, Lcom/helpshift/widget/a;->a(Lcom/helpshift/widget/CSATView;)V

    .line 68
    :cond_0
    return-void
.end method
