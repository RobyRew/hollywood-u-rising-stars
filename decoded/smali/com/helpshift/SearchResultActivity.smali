.class public final Lcom/helpshift/SearchResultActivity;
.super Lcom/helpshift/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/helpshift/m;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/ArrayAdapter;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/helpshift/SearchResultActivity;->b()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    return-void
.end method

.method private b()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 95
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/helpshift/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/helpshift/m;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    if-ne p2, v1, :cond_0

    const/16 v0, 0x7fbb

    if-ne p1, v0, :cond_0

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v1, v0}, Lcom/helpshift/SearchResultActivity;->setResult(ILandroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lcom/helpshift/SearchResultActivity;->finish()V

    .line 107
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/helpshift/m;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lcom/helpshift/h;->D:I

    invoke-virtual {p0, v0}, Lcom/helpshift/SearchResultActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/helpshift/SearchResultActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/helpshift/h;->G:I

    invoke-virtual {v0, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v2}, Lcom/helpshift/e/t;->a(Landroid/widget/TextView;F)V

    .line 33
    invoke-direct {p0}, Lcom/helpshift/SearchResultActivity;->b()Landroid/widget/ListView;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 34
    invoke-direct {p0}, Lcom/helpshift/SearchResultActivity;->b()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/helpshift/SearchResultActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/helpshift/h;->F:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lcom/helpshift/SearchResultActivity;->c()Lcom/helpshift/app/a;

    move-result-object v0

    .line 37
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/helpshift/app/a;->a(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/helpshift/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/k;->N:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/helpshift/app/a;->a(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/helpshift/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    const-string/jumbo v2, "searchQuery"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v2, Lcom/helpshift/al;

    invoke-direct {v2, p0}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    .line 43
    sget-object v3, Lcom/helpshift/dl;->c:Lcom/helpshift/dl;

    invoke-virtual {v2, v0, v3}, Lcom/helpshift/al;->a(Ljava/lang/String;Lcom/helpshift/dl;)Ljava/util/ArrayList;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 49
    :goto_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    sget v3, Lcom/helpshift/h;->E:I

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 52
    invoke-direct {p0, v1}, Lcom/helpshift/SearchResultActivity;->a(Landroid/widget/ArrayAdapter;)V

    .line 53
    invoke-direct {p0}, Lcom/helpshift/SearchResultActivity;->b()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/helpshift/eu;

    invoke-direct {v1, p0, v2}, Lcom/helpshift/eu;-><init>(Lcom/helpshift/SearchResultActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    sget v0, Lcom/helpshift/g;->ah:I

    invoke-virtual {p0, v0}, Lcom/helpshift/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 67
    new-instance v1, Lcom/helpshift/ev;

    invoke-direct {v1, p0}, Lcom/helpshift/ev;-><init>(Lcom/helpshift/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/helpshift/m;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 82
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/helpshift/SearchResultActivity;->finish()V

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/helpshift/m;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onStart()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/helpshift/m;->onStart()V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/helpshift/m;->onStop()V

    return-void
.end method
