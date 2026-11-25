.class Landroid/support/design/widget/q;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/design/widget/h;


# direct methods
.method constructor <init>(Landroid/support/design/widget/h;I)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Landroid/support/design/widget/q;->b:Landroid/support/design/widget/h;

    iput p2, p0, Landroid/support/design/widget/q;->a:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Landroid/support/design/widget/q;->b:Landroid/support/design/widget/h;

    iget v1, p0, Landroid/support/design/widget/q;->a:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/h;->c(I)V

    .line 544
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Landroid/support/design/widget/q;->b:Landroid/support/design/widget/h;

    invoke-static {v0}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h;)Landroid/support/design/widget/t;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Landroid/support/design/widget/t;->b(II)V

    .line 539
    return-void
.end method
