.class public Landroid/support/design/internal/h;
.super Landroid/support/v7/view/menu/an;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/design/internal/f;Landroid/support/v7/view/menu/s;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/view/menu/an;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/o;Landroid/support/v7/view/menu/s;)V

    .line 38
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/an;->a(Z)V

    .line 43
    invoke-virtual {p0}, Landroid/support/design/internal/h;->s()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/o;->a(Z)V

    .line 44
    return-void
.end method
