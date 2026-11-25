.class Landroid/support/v7/widget/bf;
.super Landroid/support/v7/widget/cs;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bh;

.field final synthetic b:Landroid/support/v7/widget/be;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/be;Landroid/view/View;Landroid/support/v7/widget/bh;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Landroid/support/v7/widget/bf;->b:Landroid/support/v7/widget/be;

    iput-object p3, p0, Landroid/support/v7/widget/bf;->a:Landroid/support/v7/widget/bh;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/cs;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/ak;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v7/widget/bf;->a:Landroid/support/v7/widget/bh;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/v7/widget/bf;->b:Landroid/support/v7/widget/be;

    iget-object v0, v0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/bh;

    invoke-virtual {v0}, Landroid/support/v7/widget/bh;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/bf;->b:Landroid/support/v7/widget/be;

    iget-object v0, v0, Landroid/support/v7/widget/be;->a:Landroid/support/v7/widget/bh;

    invoke-virtual {v0}, Landroid/support/v7/widget/bh;->d()V

    .line 262
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
