.class Landroid/support/v7/widget/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/hg;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/es;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/es;)V
    .locals 0

    .prologue
    .line 6870
    iput-object p1, p0, Landroid/support/v7/widget/et;->a:Landroid/support/v7/widget/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 6888
    iget-object v0, p0, Landroid/support/v7/widget/et;->a:Landroid/support/v7/widget/es;

    invoke-virtual {v0}, Landroid/support/v7/widget/es;->z()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 6898
    .line 6899
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 6900
    iget-object v1, p0, Landroid/support/v7/widget/et;->a:Landroid/support/v7/widget/es;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/es;->h(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/ex;->leftMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 6883
    iget-object v0, p0, Landroid/support/v7/widget/et;->a:Landroid/support/v7/widget/es;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/es;->h(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 6893
    iget-object v0, p0, Landroid/support/v7/widget/et;->a:Landroid/support/v7/widget/es;

    invoke-virtual {v0}, Landroid/support/v7/widget/es;->x()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/et;->a:Landroid/support/v7/widget/es;

    invoke-virtual {v1}, Landroid/support/v7/widget/es;->B()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 6905
    .line 6906
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 6907
    iget-object v1, p0, Landroid/support/v7/widget/et;->a:Landroid/support/v7/widget/es;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/es;->j(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/ex;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method
