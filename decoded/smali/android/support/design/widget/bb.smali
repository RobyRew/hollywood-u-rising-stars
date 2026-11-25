.class Landroid/support/design/widget/bb;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/be;

.field final synthetic c:Landroid/support/design/widget/az;


# direct methods
.method constructor <init>(Landroid/support/design/widget/az;ZLandroid/support/design/widget/be;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Landroid/support/design/widget/bb;->c:Landroid/support/design/widget/az;

    iput-boolean p2, p0, Landroid/support/design/widget/bb;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/bb;->b:Landroid/support/design/widget/be;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/design/widget/bb;->c:Landroid/support/design/widget/az;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/az;->c:I

    .line 142
    iget-object v0, p0, Landroid/support/design/widget/bb;->b:Landroid/support/design/widget/be;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/support/design/widget/bb;->b:Landroid/support/design/widget/be;

    invoke-interface {v0}, Landroid/support/design/widget/be;->a()V

    .line 145
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/design/widget/bb;->c:Landroid/support/design/widget/az;

    iget-object v0, v0, Landroid/support/design/widget/az;->m:Landroid/support/design/widget/dd;

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/design/widget/bb;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/dd;->a(IZ)V

    .line 137
    return-void
.end method
