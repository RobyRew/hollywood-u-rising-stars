.class Landroid/support/design/widget/ct;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/design/widget/cn;

.field final synthetic b:Landroid/support/design/widget/cr;


# direct methods
.method constructor <init>(Landroid/support/design/widget/cr;Landroid/support/design/widget/cn;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Landroid/support/design/widget/ct;->b:Landroid/support/design/widget/cr;

    iput-object p2, p0, Landroid/support/design/widget/ct;->a:Landroid/support/design/widget/cn;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/design/widget/ct;->a:Landroid/support/design/widget/cn;

    invoke-interface {v0}, Landroid/support/design/widget/cn;->c()V

    .line 77
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/design/widget/ct;->a:Landroid/support/design/widget/cn;

    invoke-interface {v0}, Landroid/support/design/widget/cn;->b()V

    .line 72
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/design/widget/ct;->a:Landroid/support/design/widget/cn;

    invoke-interface {v0}, Landroid/support/design/widget/cn;->a()V

    .line 67
    return-void
.end method
