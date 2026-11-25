.class public final Lcom/helpshift/HSQuestion;
.super Lcom/helpshift/m;
.source "SourceFile"


# instance fields
.field a:Landroid/os/Bundle;

.field b:Lcom/helpshift/app/a;

.field private c:Lcom/helpshift/HSQuestionFragment;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/helpshift/m;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/HSQuestion;->c:Lcom/helpshift/HSQuestionFragment;

    return-void
.end method


# virtual methods
.method protected b()Z
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/helpshift/HSQuestion;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "questionFlow"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "showSearchOnNewConversationFlow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/helpshift/m;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 102
    instance-of v0, p1, Lcom/helpshift/HSQuestionFragment;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lcom/helpshift/HSQuestionFragment;

    iput-object p1, p0, Lcom/helpshift/HSQuestion;->c:Lcom/helpshift/HSQuestionFragment;

    .line 105
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v2, 0x400

    const/4 v3, 0x1

    .line 49
    invoke-super {p0, p1}, Lcom/helpshift/m;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/helpshift/HSQuestion;->a(I)V

    .line 52
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestion;->a:Landroid/os/Bundle;

    .line 53
    iget-object v0, p0, Lcom/helpshift/HSQuestion;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "showInFullScreen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 60
    :cond_0
    sget v0, Lcom/helpshift/h;->h:I

    invoke-virtual {p0, v0}, Lcom/helpshift/HSQuestion;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->c()Lcom/helpshift/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestion;->b:Lcom/helpshift/app/a;

    .line 63
    iget-object v0, p0, Lcom/helpshift/HSQuestion;->b:Lcom/helpshift/app/a;

    invoke-virtual {v0, v3}, Lcom/helpshift/app/a;->a(Z)V

    .line 65
    sget-object v0, Lcom/helpshift/d/b/a;->a:Ljava/util/Map;

    const-string/jumbo v1, "hl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget v0, Lcom/helpshift/g;->l:I

    invoke-virtual {p0, v0}, Lcom/helpshift/HSQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/helpshift/HSQuestion;->d:Landroid/widget/ImageView;

    .line 67
    iget-object v1, p0, Lcom/helpshift/HSQuestion;->d:Landroid/widget/ImageView;

    sget-object v0, Lcom/helpshift/d/a/b;->a:Ljava/util/Map;

    const-string/jumbo v2, "newHSLogo"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/helpshift/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p0, Lcom/helpshift/HSQuestion;->d:Landroid/widget/ImageView;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 71
    :cond_1
    invoke-virtual {p0, v3}, Lcom/helpshift/HSQuestion;->c(Z)V

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/i;->e:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 87
    sget v0, Lcom/helpshift/g;->ag:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    invoke-static {p0, v0}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSQuestion;->b:Lcom/helpshift/app/a;

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->c()Lcom/helpshift/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestion;->b:Lcom/helpshift/app/a;

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/helpshift/HSQuestion;->b:Lcom/helpshift/app/a;

    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/helpshift/app/a;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 96
    invoke-super {p0, p1}, Lcom/helpshift/m;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/helpshift/HSQuestion;->isFinishing()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 41
    invoke-static {}, Lcom/helpshift/e/c;->a()V

    .line 44
    :cond_0
    invoke-super {p0}, Lcom/helpshift/m;->onPause()V

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/helpshift/m;->onResume()V

    .line 33
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
