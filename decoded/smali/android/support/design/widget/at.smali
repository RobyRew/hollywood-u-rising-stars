.class Landroid/support/design/widget/at;
.super Landroid/support/design/widget/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/be;

.field final synthetic c:Landroid/support/design/widget/as;


# direct methods
.method constructor <init>(Landroid/support/design/widget/as;ZLandroid/support/design/widget/be;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Landroid/support/design/widget/at;->c:Landroid/support/design/widget/as;

    iput-boolean p2, p0, Landroid/support/design/widget/at;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/at;->b:Landroid/support/design/widget/be;

    invoke-direct {p0}, Landroid/support/design/widget/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/design/widget/at;->c:Landroid/support/design/widget/as;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/as;->c:I

    .line 163
    iget-object v0, p0, Landroid/support/design/widget/at;->c:Landroid/support/design/widget/as;

    iget-object v1, v0, Landroid/support/design/widget/as;->m:Landroid/support/design/widget/dd;

    iget-boolean v0, p0, Landroid/support/design/widget/at;->a:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    iget-boolean v2, p0, Landroid/support/design/widget/at;->a:Z

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/dd;->a(IZ)V

    .line 164
    iget-object v0, p0, Landroid/support/design/widget/at;->b:Landroid/support/design/widget/be;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/support/design/widget/at;->b:Landroid/support/design/widget/be;

    invoke-interface {v0}, Landroid/support/design/widget/be;->b()V

    .line 167
    :cond_0
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
