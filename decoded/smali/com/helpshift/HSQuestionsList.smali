.class public final Lcom/helpshift/HSQuestionsList;
.super Lcom/helpshift/m;
.source "SourceFile"


# instance fields
.field private a:Lcom/helpshift/du;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/helpshift/m;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/helpshift/HSQuestionsList;)Lcom/helpshift/du;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/helpshift/HSQuestionsList;->a:Lcom/helpshift/du;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/helpshift/m;->onBackPressed()V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v2, 0x400

    .line 38
    invoke-super {p0, p1}, Lcom/helpshift/m;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "showInFullScreen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 46
    :cond_0
    sget v0, Lcom/helpshift/h;->j:I

    invoke-virtual {p0, v0}, Lcom/helpshift/HSQuestionsList;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "sectionPublishId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/helpshift/du;

    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lcom/helpshift/du;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/helpshift/HSQuestionsList;->a:Lcom/helpshift/du;

    .line 50
    sget v0, Lcom/helpshift/g;->D:I

    invoke-virtual {p0, v0}, Lcom/helpshift/HSQuestionsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/helpshift/HSQuestionsList;->b:Landroid/support/v4/view/ViewPager;

    .line 51
    iget-object v0, p0, Lcom/helpshift/HSQuestionsList;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/helpshift/HSQuestionsList;->a:Lcom/helpshift/du;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 52
    iget-object v0, p0, Lcom/helpshift/HSQuestionsList;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/helpshift/cz;

    invoke-direct {v1, p0}, Lcom/helpshift/cz;-><init>(Lcom/helpshift/HSQuestionsList;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/helpshift/HSQuestionsList;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/helpshift/HSQuestionsList;->a:Lcom/helpshift/du;

    invoke-virtual {v1}, Lcom/helpshift/du;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 60
    sget v0, Lcom/helpshift/g;->E:I

    invoke-virtual {p0, v0}, Lcom/helpshift/HSQuestionsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerTabStrip;

    .line 62
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerTabStrip;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 63
    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 64
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 65
    check-cast v1, Landroid/widget/TextView;

    .line 66
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 67
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 62
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 71
    :cond_2
    sget v1, Lcom/helpshift/e;->d:I

    invoke-static {p0, v1}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 73
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->c()Lcom/helpshift/app/a;

    move-result-object v0

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->a(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/k;->l:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->a(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/helpshift/d/b/a;->a:Ljava/util/Map;

    const-string/jumbo v1, "hl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    sget v0, Lcom/helpshift/g;->l:I

    invoke-virtual {p0, v0}, Lcom/helpshift/HSQuestionsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/helpshift/HSQuestionsList;->c:Landroid/widget/ImageView;

    .line 79
    iget-object v1, p0, Lcom/helpshift/HSQuestionsList;->c:Landroid/widget/ImageView;

    sget-object v0, Lcom/helpshift/d/a/b;->a:Ljava/util/Map;

    const-string/jumbo v2, "newHSLogo"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/helpshift/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/helpshift/HSQuestionsList;->c:Landroid/widget/ImageView;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 83
    :cond_3
    return-void
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/helpshift/m;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 88
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionsList;->finish()V

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/helpshift/m;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/helpshift/m;->onResume()V

    .line 99
    return-void
.end method

.method public bridge synthetic onStart()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/helpshift/m;->onStart()V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/helpshift/m;->onStop()V

    return-void
.end method
