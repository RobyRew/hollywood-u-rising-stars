.class Landroid/support/v7/view/menu/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/al;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/al;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/view/menu/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/view/menu/al;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/al;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/view/menu/al;

    iget-object v0, v0, Landroid/support/v7/view/menu/al;->a:Landroid/support/v7/widget/dw;

    invoke-virtual {v0}, Landroid/support/v7/widget/dw;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/view/menu/al;

    iget-object v0, v0, Landroid/support/v7/view/menu/al;->b:Landroid/view/View;

    .line 66
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/view/menu/al;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/al;->e()V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/am;->a:Landroid/support/v7/view/menu/al;

    iget-object v0, v0, Landroid/support/v7/view/menu/al;->a:Landroid/support/v7/widget/dw;

    invoke-virtual {v0}, Landroid/support/v7/widget/dw;->d()V

    goto :goto_0
.end method
