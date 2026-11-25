.class final Landroid/support/v7/app/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/af;


# instance fields
.field final synthetic a:Landroid/support/v7/app/bf;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/support/v7/app/bf;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Landroid/support/v7/app/bi;->a:Landroid/support/v7/app/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/o;Z)V
    .locals 2

    .prologue
    .line 615
    iget-boolean v0, p0, Landroid/support/v7/app/bi;->b:Z

    if-eqz v0, :cond_0

    .line 625
    :goto_0
    return-void

    .line 619
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/bi;->b:Z

    .line 620
    iget-object v0, p0, Landroid/support/v7/app/bi;->a:Landroid/support/v7/app/bf;

    iget-object v0, v0, Landroid/support/v7/app/bf;->a:Landroid/support/v7/widget/cb;

    invoke-interface {v0}, Landroid/support/v7/widget/cb;->m()V

    .line 621
    iget-object v0, p0, Landroid/support/v7/app/bi;->a:Landroid/support/v7/app/bf;

    iget-object v0, v0, Landroid/support/v7/app/bf;->c:Landroid/view/Window$Callback;

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Landroid/support/v7/app/bi;->a:Landroid/support/v7/app/bf;

    iget-object v0, v0, Landroid/support/v7/app/bf;->c:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 624
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/bi;->b:Z

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/o;)Z
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Landroid/support/v7/app/bi;->a:Landroid/support/v7/app/bf;

    iget-object v0, v0, Landroid/support/v7/app/bf;->c:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Landroid/support/v7/app/bi;->a:Landroid/support/v7/app/bf;

    iget-object v0, v0, Landroid/support/v7/app/bf;->c:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 608
    const/4 v0, 0x1

    .line 610
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
