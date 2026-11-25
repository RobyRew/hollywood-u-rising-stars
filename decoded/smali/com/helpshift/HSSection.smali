.class public final Lcom/helpshift/HSSection;
.super Lcom/helpshift/m;
.source "SourceFile"


# instance fields
.field private a:Lcom/helpshift/al;

.field private b:Lcom/helpshift/dx;

.field private c:Lcom/helpshift/do;

.field private d:Ljava/lang/String;

.field private e:Lcom/helpshift/app/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/helpshift/m;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v1, 0x400

    const/4 v5, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/helpshift/m;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sput-boolean v5, Lcom/helpshift/ah;->a:Z

    .line 63
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 64
    if-eqz v2, :cond_0

    .line 65
    const-string/jumbo v0, "sectionPublishId"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/HSSection;->d:Ljava/lang/String;

    .line 68
    :cond_0
    new-instance v0, Lcom/helpshift/al;

    invoke-direct {v0, p0}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/HSSection;->a:Lcom/helpshift/al;

    .line 69
    iget-object v0, p0, Lcom/helpshift/HSSection;->a:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iput-object v0, p0, Lcom/helpshift/HSSection;->b:Lcom/helpshift/dx;

    .line 71
    const-string/jumbo v0, "showInFullScreen"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 78
    :cond_1
    sget v0, Lcom/helpshift/h;->k:I

    invoke-virtual {p0, v0}, Lcom/helpshift/HSSection;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->c()Lcom/helpshift/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSSection;->e:Lcom/helpshift/app/a;

    .line 81
    iget-object v0, p0, Lcom/helpshift/HSSection;->e:Lcom/helpshift/app/a;

    invoke-virtual {v0, v5}, Lcom/helpshift/app/a;->a(Z)V

    .line 83
    sget-object v0, Lcom/helpshift/d/b/a;->a:Ljava/util/Map;

    const-string/jumbo v1, "hl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    sget v0, Lcom/helpshift/g;->F:I

    invoke-virtual {p0, v0}, Lcom/helpshift/HSSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 85
    sget-object v1, Lcom/helpshift/d/a/b;->a:Ljava/util/Map;

    const-string/jumbo v3, "newHSLogo"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/helpshift/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/helpshift/do;

    invoke-direct {v1}, Lcom/helpshift/do;-><init>()V

    iput-object v1, p0, Lcom/helpshift/HSSection;->c:Lcom/helpshift/do;

    .line 93
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string/jumbo v3, "sectionPublishId"

    iget-object v4, p0, Lcom/helpshift/HSSection;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v3, "decomp"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 97
    iget-object v2, p0, Lcom/helpshift/HSSection;->c:Lcom/helpshift/do;

    invoke-virtual {v2, v1}, Lcom/helpshift/do;->setArguments(Landroid/os/Bundle;)V

    .line 99
    sget v1, Lcom/helpshift/g;->G:I

    iget-object v2, p0, Lcom/helpshift/HSSection;->c:Lcom/helpshift/do;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 100
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/i;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 111
    invoke-super {p0, p1}, Lcom/helpshift/m;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 117
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->finish()V

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/helpshift/m;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-virtual {p0}, Lcom/helpshift/HSSection;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/helpshift/HSSection;->isFinishing()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 51
    invoke-static {}, Lcom/helpshift/e/c;->a()V

    .line 55
    :cond_0
    invoke-super {p0}, Lcom/helpshift/m;->onPause()V

    .line 56
    return-void
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
