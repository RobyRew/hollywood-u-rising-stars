.class Lcom/helpshift/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/helpshift/f/e;

.field final synthetic d:Lcom/helpshift/app/ActionBarHelperBase;


# direct methods
.method constructor <init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/view/View;Landroid/view/View;Lcom/helpshift/f/e;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/helpshift/app/e;->d:Lcom/helpshift/app/ActionBarHelperBase;

    iput-object p2, p0, Lcom/helpshift/app/e;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/helpshift/app/e;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/helpshift/app/e;->c:Lcom/helpshift/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/helpshift/app/e;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/helpshift/app/e;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/helpshift/app/e;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/helpshift/app/e;->d:Lcom/helpshift/app/ActionBarHelperBase;

    iput-boolean v1, v0, Lcom/helpshift/app/ActionBarHelperBase;->b:Z

    .line 323
    iget-object v0, p0, Lcom/helpshift/app/e;->c:Lcom/helpshift/f/e;

    invoke-interface {v0}, Lcom/helpshift/f/e;->e()Z

    move-result v0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 308
    iget-object v0, p0, Lcom/helpshift/app/e;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/helpshift/app/e;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/helpshift/app/e;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/helpshift/app/e;->d:Lcom/helpshift/app/ActionBarHelperBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/helpshift/app/ActionBarHelperBase;->b:Z

    .line 313
    iget-object v0, p0, Lcom/helpshift/app/e;->c:Lcom/helpshift/f/e;

    invoke-interface {v0}, Lcom/helpshift/f/e;->d()Z

    move-result v0

    return v0
.end method
