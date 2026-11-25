.class Lcom/helpshift/app/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field final synthetic a:Lcom/helpshift/f/e;

.field final synthetic b:Lcom/helpshift/app/h;


# direct methods
.method constructor <init>(Lcom/helpshift/app/h;Lcom/helpshift/f/e;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/helpshift/app/j;->b:Lcom/helpshift/app/h;

    iput-object p2, p0, Lcom/helpshift/app/j;->a:Lcom/helpshift/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/helpshift/app/j;->a:Lcom/helpshift/f/e;

    invoke-interface {v0}, Lcom/helpshift/f/e;->e()Z

    move-result v0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/helpshift/app/j;->a:Lcom/helpshift/f/e;

    invoke-interface {v0}, Lcom/helpshift/f/e;->d()Z

    move-result v0

    return v0
.end method
