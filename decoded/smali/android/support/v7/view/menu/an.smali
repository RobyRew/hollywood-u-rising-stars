.class public Landroid/support/v7/view/menu/an;
.super Landroid/support/v7/view/menu/o;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private d:Landroid/support/v7/view/menu/o;

.field private e:Landroid/support/v7/view/menu/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/o;Landroid/support/v7/view/menu/s;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/o;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Landroid/support/v7/view/menu/an;->d:Landroid/support/v7/view/menu/o;

    .line 44
    iput-object p3, p0, Landroid/support/v7/view/menu/an;->e:Landroid/support/v7/view/menu/s;

    .line 45
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->e:Landroid/support/v7/view/menu/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/an;->e:Landroid/support/v7/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/s;->getItemId()I

    move-result v0

    .line 134
    :goto_0
    if-nez v0, :cond_1

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_1
    return-object v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/support/v7/view/menu/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Landroid/support/v7/view/menu/p;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->d:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/p;)V

    .line 78
    return-void
.end method

.method a(Landroid/support/v7/view/menu/o;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/o;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/an;->d:Landroid/support/v7/view/menu/o;

    .line 88
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/o;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->d:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->b()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->d:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->c()Z

    move-result v0

    return v0
.end method

.method public c(Landroid/support/v7/view/menu/s;)Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->d:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/o;->c(Landroid/support/v7/view/menu/s;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/support/v7/view/menu/s;)Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->d:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/o;->d(Landroid/support/v7/view/menu/s;)Z

    move-result v0

    return v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->e:Landroid/support/v7/view/menu/s;

    return-object v0
.end method

.method public p()Landroid/support/v7/view/menu/o;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->d:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->p()Landroid/support/v7/view/menu/o;

    move-result-object v0

    return-object v0
.end method

.method public s()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->d:Landroid/support/v7/view/menu/o;

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/o;->e(I)Landroid/support/v7/view/menu/o;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/o;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/o;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/o;->d(I)Landroid/support/v7/view/menu/o;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/o;->a(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/o;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/o;->a(Landroid/view/View;)Landroid/support/v7/view/menu/o;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->e:Landroid/support/v7/view/menu/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/s;->setIcon(I)Landroid/view/MenuItem;

    .line 98
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->e:Landroid/support/v7/view/menu/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/s;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 93
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v7/view/menu/an;->d:Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/o;->setQwertyMode(Z)V

    .line 50
    return-void
.end method
