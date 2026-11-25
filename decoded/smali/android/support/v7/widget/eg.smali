.class Landroid/support/v7/widget/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/hj;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/fn;)V
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/es;

    iget-object v1, p1, Landroid/support/v7/widget/fn;->a:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/fe;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/es;->a(Landroid/view/View;Landroid/support/v7/widget/fe;)V

    .line 543
    return-void
.end method

.method public a(Landroid/support/v7/widget/fn;Landroid/support/v7/widget/ep;Landroid/support/v7/widget/ep;)V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/fe;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/fe;->c(Landroid/support/v7/widget/fn;)V

    .line 516
    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/fn;Landroid/support/v7/widget/ep;Landroid/support/v7/widget/ep;)V

    .line 517
    return-void
.end method

.method public b(Landroid/support/v7/widget/fn;Landroid/support/v7/widget/ep;Landroid/support/v7/widget/ep;)V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/fn;Landroid/support/v7/widget/ep;Landroid/support/v7/widget/ep;)V

    .line 522
    return-void
.end method

.method public c(Landroid/support/v7/widget/fn;Landroid/support/v7/widget/ep;Landroid/support/v7/widget/ep;)V
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/fn;->a(Z)V

    .line 528
    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/support/v7/widget/em;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/support/v7/widget/em;->a(Landroid/support/v7/widget/fn;Landroid/support/v7/widget/fn;Landroid/support/v7/widget/ep;Landroid/support/v7/widget/ep;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/support/v7/widget/em;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/em;->c(Landroid/support/v7/widget/fn;Landroid/support/v7/widget/ep;Landroid/support/v7/widget/ep;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Landroid/support/v7/widget/eg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->p()V

    goto :goto_0
.end method
