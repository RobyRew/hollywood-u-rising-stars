.class Landroid/support/design/widget/ba;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/be;

.field final synthetic c:Landroid/support/design/widget/az;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/design/widget/az;ZLandroid/support/design/widget/be;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Landroid/support/design/widget/ba;->c:Landroid/support/design/widget/az;

    iput-boolean p2, p0, Landroid/support/design/widget/ba;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/ba;->b:Landroid/support/design/widget/be;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/ba;->d:Z

    .line 84
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/design/widget/ba;->c:Landroid/support/design/widget/az;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/az;->c:I

    .line 90
    iget-boolean v0, p0, Landroid/support/design/widget/ba;->d:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/support/design/widget/ba;->c:Landroid/support/design/widget/az;

    iget-object v1, v0, Landroid/support/design/widget/az;->m:Landroid/support/design/widget/dd;

    iget-boolean v0, p0, Landroid/support/design/widget/ba;->a:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    iget-boolean v2, p0, Landroid/support/design/widget/ba;->a:Z

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/dd;->a(IZ)V

    .line 93
    iget-object v0, p0, Landroid/support/design/widget/ba;->b:Landroid/support/design/widget/be;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/support/design/widget/ba;->b:Landroid/support/design/widget/be;

    invoke-interface {v0}, Landroid/support/design/widget/be;->b()V

    .line 97
    :cond_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Landroid/support/design/widget/ba;->c:Landroid/support/design/widget/az;

    iget-object v0, v0, Landroid/support/design/widget/az;->m:Landroid/support/design/widget/dd;

    iget-boolean v1, p0, Landroid/support/design/widget/ba;->a:Z

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/dd;->a(IZ)V

    .line 78
    iput-boolean v2, p0, Landroid/support/design/widget/ba;->d:Z

    .line 79
    return-void
.end method
