.class Landroid/support/v7/widget/cj;
.super Landroid/support/v7/widget/cn;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/cl;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Landroid/support/v7/widget/cc;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/cc;Landroid/support/v7/widget/cl;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Landroid/support/v7/widget/cj;->c:Landroid/support/v7/widget/cc;

    iput-object p2, p0, Landroid/support/v7/widget/cj;->a:Landroid/support/v7/widget/cl;

    iput-object p3, p0, Landroid/support/v7/widget/cj;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Landroid/support/v7/widget/cn;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 359
    iget-object v0, p0, Landroid/support/v7/widget/cj;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 360
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 361
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 362
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/cj;->c:Landroid/support/v7/widget/cc;

    iget-object v1, p0, Landroid/support/v7/widget/cj;->a:Landroid/support/v7/widget/cl;

    iget-object v1, v1, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/fn;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/cc;->a(Landroid/support/v7/widget/fn;Z)V

    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/cj;->c:Landroid/support/v7/widget/cc;

    iget-object v0, v0, Landroid/support/v7/widget/cc;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/cj;->a:Landroid/support/v7/widget/cl;

    iget-object v1, v1, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/fn;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/cj;->c:Landroid/support/v7/widget/cc;

    invoke-virtual {v0}, Landroid/support/v7/widget/cc;->c()V

    .line 366
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/cj;->c:Landroid/support/v7/widget/cc;

    iget-object v1, p0, Landroid/support/v7/widget/cj;->a:Landroid/support/v7/widget/cl;

    iget-object v1, v1, Landroid/support/v7/widget/cl;->a:Landroid/support/v7/widget/fn;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/cc;->b(Landroid/support/v7/widget/fn;Z)V

    .line 355
    return-void
.end method
