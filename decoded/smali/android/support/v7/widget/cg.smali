.class Landroid/support/v7/widget/cg;
.super Landroid/support/v7/widget/cn;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/fn;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Landroid/support/v7/widget/cc;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/cc;Landroid/support/v7/widget/fn;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Landroid/support/v7/widget/cg;->c:Landroid/support/v7/widget/cc;

    iput-object p2, p0, Landroid/support/v7/widget/cg;->a:Landroid/support/v7/widget/fn;

    iput-object p3, p0, Landroid/support/v7/widget/cg;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Landroid/support/v7/widget/cn;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v7/widget/cg;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 208
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 209
    iget-object v0, p0, Landroid/support/v7/widget/cg;->c:Landroid/support/v7/widget/cc;

    iget-object v1, p0, Landroid/support/v7/widget/cg;->a:Landroid/support/v7/widget/fn;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cc;->i(Landroid/support/v7/widget/fn;)V

    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/cg;->c:Landroid/support/v7/widget/cc;

    iget-object v0, v0, Landroid/support/v7/widget/cc;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/cg;->a:Landroid/support/v7/widget/fn;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Landroid/support/v7/widget/cg;->c:Landroid/support/v7/widget/cc;

    invoke-virtual {v0}, Landroid/support/v7/widget/cc;->c()V

    .line 212
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v7/widget/cg;->c:Landroid/support/v7/widget/cc;

    iget-object v1, p0, Landroid/support/v7/widget/cg;->a:Landroid/support/v7/widget/fn;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cc;->l(Landroid/support/v7/widget/fn;)V

    .line 203
    return-void
.end method
