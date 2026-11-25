.class public Lcom/helpshift/widget/a;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/helpshift/widget/CSATView;

.field private c:Landroid/widget/RatingBar;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:F

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/widget/a;->g:Z

    .line 37
    iput-object p1, p0, Lcom/helpshift/widget/a;->a:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/helpshift/widget/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/helpshift/widget/a;->a:Landroid/content/Context;

    sget v2, Lcom/helpshift/k;->M:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    return-void
.end method


# virtual methods
.method protected a(Lcom/helpshift/widget/CSATView;)V
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lcom/helpshift/widget/a;->b:Lcom/helpshift/widget/CSATView;

    .line 105
    invoke-virtual {p1}, Lcom/helpshift/widget/CSATView;->a()Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    iput v0, p0, Lcom/helpshift/widget/a;->f:F

    .line 106
    invoke-virtual {p0}, Lcom/helpshift/widget/a;->show()V

    .line 107
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 86
    sget v1, Lcom/helpshift/g;->ae:I

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/helpshift/widget/a;->b:Lcom/helpshift/widget/CSATView;

    iget-object v1, p0, Lcom/helpshift/widget/a;->c:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    iget-object v2, p0, Lcom/helpshift/widget/a;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/widget/CSATView;->a(FLjava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/widget/a;->g:Z

    .line 89
    invoke-direct {p0}, Lcom/helpshift/widget/a;->a()V

    .line 90
    invoke-virtual {p0}, Lcom/helpshift/widget/a;->dismiss()V

    .line 92
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/a;->requestWindowFeature(I)Z

    .line 44
    sget v0, Lcom/helpshift/h;->A:I

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/a;->setContentView(I)V

    .line 45
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/a;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 46
    invoke-virtual {p0, p0}, Lcom/helpshift/widget/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 48
    sget v0, Lcom/helpshift/g;->U:I

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/helpshift/widget/a;->c:Landroid/widget/RatingBar;

    .line 49
    iget-object v0, p0, Lcom/helpshift/widget/a;->c:Landroid/widget/RatingBar;

    invoke-virtual {v0, p0}, Landroid/widget/RatingBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    sget v0, Lcom/helpshift/g;->ac:I

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/widget/a;->d:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/helpshift/g;->ad:I

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/helpshift/widget/a;->e:Landroid/widget/EditText;

    .line 54
    sget v0, Lcom/helpshift/g;->ae:I

    invoke-virtual {p0, v0}, Lcom/helpshift/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/helpshift/widget/a;->g:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/helpshift/widget/a;->b:Lcom/helpshift/widget/CSATView;

    invoke-virtual {v0}, Lcom/helpshift/widget/CSATView;->b()V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string/jumbo v0, "cr"

    invoke-static {v0}, Lcom/helpshift/br;->a(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/helpshift/widget/a;->b:Lcom/helpshift/widget/CSATView;

    invoke-virtual {v0}, Lcom/helpshift/widget/CSATView;->a()Landroid/widget/RatingBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 6

    .prologue
    .line 60
    const-string/jumbo v0, "sr"

    invoke-static {v0}, Lcom/helpshift/br;->a(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/helpshift/widget/a;->c:Landroid/widget/RatingBar;

    iget v1, p0, Lcom/helpshift/widget/a;->f:F

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 63
    iget-object v0, p0, Lcom/helpshift/widget/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/helpshift/j;->b:I

    iget v2, p0, Lcom/helpshift/widget/a;->f:F

    float-to-int v2, v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/helpshift/widget/a;->f:F

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget v1, p0, Lcom/helpshift/widget/a;->f:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/helpshift/widget/a;->d:Landroid/widget/TextView;

    sget v2, Lcom/helpshift/k;->K:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/helpshift/widget/a;->c:Landroid/widget/RatingBar;

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/helpshift/widget/a;->d:Landroid/widget/TextView;

    sget v2, Lcom/helpshift/k;->L:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 97
    sget v1, Lcom/helpshift/g;->U:I

    if-ne v0, v1, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
