.class public Lcom/helpshift/app/h;
.super Lcom/helpshift/app/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private b:Landroid/view/MenuItem;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/helpshift/app/a;-><init>(Landroid/app/Activity;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/app/h;->b:Landroid/view/MenuItem;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/app/h;->c:Z

    .line 25
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Z)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/helpshift/app/h;->b:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/helpshift/app/h;->b:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/helpshift/app/h;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 40
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/helpshift/app/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget v0, Lcom/helpshift/i;->f:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 149
    const v0, 0x102000d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/app/h;->b:Landroid/view/MenuItem;

    .line 150
    iget-boolean v0, p0, Lcom/helpshift/app/h;->c:Z

    invoke-direct {p0, v0}, Lcom/helpshift/app/h;->c(Z)V

    .line 152
    :cond_0
    return-void
.end method

.method public a(Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 95
    instance-of v0, v0, Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompat;->collapseActionView(Landroid/view/MenuItem;)Z

    .line 98
    :cond_0
    return-void
.end method

.method public a(Landroid/view/MenuItem;Lcom/helpshift/f/e;)V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/helpshift/app/j;

    invoke-direct {v0, p0, p2}, Lcom/helpshift/app/j;-><init>(Lcom/helpshift/app/h;Lcom/helpshift/f/e;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 89
    return-void
.end method

.method public a(Landroid/view/MenuItem;Lcom/helpshift/f/g;)V
    .locals 2

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 61
    instance-of v1, v0, Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Landroid/widget/SearchView;

    new-instance v1, Lcom/helpshift/app/i;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/app/i;-><init>(Lcom/helpshift/app/h;Lcom/helpshift/f/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 74
    :cond_0
    return-void
.end method

.method public a(Landroid/view/MenuItem;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 104
    instance-of v1, v0, Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0, p2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/helpshift/app/h;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/helpshift/app/h;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 30
    return-void
.end method

.method public b(Landroid/view/MenuItem;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 112
    const-string/jumbo v1, ""

    .line 114
    instance-of v2, v0, Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    .line 115
    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/helpshift/app/h;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 55
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/helpshift/app/h;->c:Z

    .line 45
    invoke-direct {p0}, Lcom/helpshift/app/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p1}, Lcom/helpshift/app/h;->c(Z)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/helpshift/app/h;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/helpshift/app/h;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 133
    return-void
.end method

.method public c(Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 128
    :cond_0
    return-void
.end method
