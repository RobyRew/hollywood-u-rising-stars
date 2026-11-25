.class Landroid/support/v7/widget/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bh;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bh;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Landroid/support/v7/widget/bj;->a:Landroid/support/v7/widget/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Landroid/support/v7/widget/bj;->a:Landroid/support/v7/widget/bh;

    iget-object v1, p0, Landroid/support/v7/widget/bj;->a:Landroid/support/v7/widget/bh;

    iget-object v1, v1, Landroid/support/v7/widget/bh;->b:Landroid/support/v7/widget/be;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bh;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Landroid/support/v7/widget/bj;->a:Landroid/support/v7/widget/bh;

    invoke-virtual {v0}, Landroid/support/v7/widget/bh;->e()V

    .line 811
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bj;->a:Landroid/support/v7/widget/bh;

    invoke-virtual {v0}, Landroid/support/v7/widget/bh;->b()V

    .line 809
    iget-object v0, p0, Landroid/support/v7/widget/bj;->a:Landroid/support/v7/widget/bh;

    invoke-static {v0}, Landroid/support/v7/widget/bh;->a(Landroid/support/v7/widget/bh;)V

    goto :goto_0
.end method
