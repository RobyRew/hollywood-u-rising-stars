.class public Landroid/support/design/internal/f;
.super Landroid/support/v7/view/menu/o;
.source "SourceFile"


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/design/internal/f;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/s;

    .line 44
    new-instance v1, Landroid/support/design/internal/h;

    invoke-virtual {p0}, Landroid/support/design/internal/f;->e()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Landroid/support/design/internal/h;-><init>(Landroid/content/Context;Landroid/support/design/internal/f;Landroid/support/v7/view/menu/s;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/s;->a(Landroid/support/v7/view/menu/an;)V

    .line 46
    return-object v1
.end method
