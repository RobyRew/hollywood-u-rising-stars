.class Lcom/helpshift/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic b:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/helpshift/bz;->b:Lcom/helpshift/bu;

    iput-object p2, p0, Lcom/helpshift/bz;->a:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 716
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 723
    iget-object v0, p0, Lcom/helpshift/bz;->b:Lcom/helpshift/bu;

    invoke-static {v0, v1}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;Z)Z

    .line 724
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/helpshift/bz;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 726
    iget-object v0, p0, Lcom/helpshift/bz;->a:Landroid/widget/ImageButton;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 727
    iget-object v0, p0, Lcom/helpshift/bz;->b:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->f(Lcom/helpshift/bu;)Lcom/helpshift/m;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/bz;->a:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->d(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 733
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/helpshift/bz;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 730
    iget-object v0, p0, Lcom/helpshift/bz;->a:Landroid/widget/ImageButton;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 731
    iget-object v0, p0, Lcom/helpshift/bz;->b:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->f(Lcom/helpshift/bu;)Lcom/helpshift/m;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/bz;->a:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->e(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
