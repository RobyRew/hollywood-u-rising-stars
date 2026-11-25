.class public abstract Landroid/support/v7/widget/ej;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/fn;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Z


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 6411
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/fn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public a(Landroid/support/v7/widget/fn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6478
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/fn;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public a(Landroid/support/v7/widget/fn;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6356
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ej;->a(Landroid/support/v7/widget/fn;I)V

    .line 6357
    return-void
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 6439
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/fn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 6366
    const-string/jumbo v0, "RV CreateView"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6367
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ej;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/fn;

    move-result-object v0

    .line 6368
    iput p2, v0, Landroid/support/v7/widget/fn;->f:I

    .line 6369
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 6370
    return-object v0
.end method

.method public final b(Landroid/support/v7/widget/fn;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 6381
    iput p2, p1, Landroid/support/v7/widget/fn;->c:I

    .line 6382
    invoke-virtual {p0}, Landroid/support/v7/widget/ej;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6383
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ej;->b(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/fn;->e:J

    .line 6385
    :cond_0
    const/16 v0, 0x207

    invoke-virtual {p1, v2, v0}, Landroid/support/v7/widget/fn;->a(II)V

    .line 6388
    const-string/jumbo v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6389
    invoke-virtual {p1}, Landroid/support/v7/widget/fn;->u()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/ej;->a(Landroid/support/v7/widget/fn;ILjava/util/List;)V

    .line 6390
    invoke-virtual {p1}, Landroid/support/v7/widget/fn;->t()V

    .line 6391
    iget-object v0, p1, Landroid/support/v7/widget/fn;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6392
    instance-of v1, v0, Landroid/support/v7/widget/ex;

    if-eqz v1, :cond_1

    .line 6393
    check-cast v0, Landroid/support/v7/widget/ex;

    iput-boolean v2, v0, Landroid/support/v7/widget/ex;->e:Z

    .line 6395
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 6396
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 6457
    iget-boolean v0, p0, Landroid/support/v7/widget/ej;->a:Z

    return v0
.end method

.method public b(Landroid/support/v7/widget/fn;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 6515
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/support/v7/widget/fn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6529
    return-void
.end method

.method public d(Landroid/support/v7/widget/fn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6541
    return-void
.end method
