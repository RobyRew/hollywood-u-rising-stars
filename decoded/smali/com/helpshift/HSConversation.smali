.class public final Lcom/helpshift/HSConversation;
.super Lcom/helpshift/m;
.source "SourceFile"


# static fields
.field public static a:Z


# instance fields
.field private b:Lcom/helpshift/al;

.field private c:Lcom/helpshift/dx;

.field private d:Landroid/os/Bundle;

.field private e:Landroid/support/v4/app/FragmentTransaction;

.field private f:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/HSConversation;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/helpshift/m;-><init>()V

    return-void
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 33
    sput-boolean p0, Lcom/helpshift/HSConversation;->a:Z

    .line 34
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/helpshift/HSConversation;->a:Z

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/helpshift/HSConversation;->c:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->t()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/helpshift/HSConversation;->c:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->v()Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/helpshift/HSConversation;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "issueId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->f()V

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/helpshift/HSConversation;->d:Landroid/os/Bundle;

    const-string/jumbo v2, "issueId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->f()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/helpshift/HSConversation;->e:Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lcom/helpshift/g;->k:I

    const-class v2, Lcom/helpshift/s;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/HSConversation;->d:Landroid/os/Bundle;

    invoke-static {p0, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 103
    iget-object v0, p0, Lcom/helpshift/HSConversation;->e:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 104
    invoke-super {p0}, Lcom/helpshift/m;->a()V

    .line 105
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/helpshift/HSConversation;->e:Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lcom/helpshift/g;->k:I

    const-class v2, Lcom/helpshift/bu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/HSConversation;->d:Landroid/os/Bundle;

    invoke-static {p0, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 112
    iget-object v0, p0, Lcom/helpshift/HSConversation;->e:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 113
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->finish()V

    .line 181
    invoke-virtual {p0, v0}, Lcom/helpshift/HSConversation;->startActivity(Landroid/content/Intent;)V

    .line 182
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/helpshift/HSConversation;->setResult(ILandroid/content/Intent;)V

    .line 161
    invoke-super {p0}, Lcom/helpshift/m;->onBackPressed()V

    .line 162
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/helpshift/m;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 173
    iget-object v0, p0, Lcom/helpshift/HSConversation;->f:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->g()V

    .line 176
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/helpshift/m;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/helpshift/HSConversation;->f:Ljava/util/Locale;

    .line 44
    new-instance v0, Lcom/helpshift/al;

    invoke-direct {v0, p0}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/HSConversation;->b:Lcom/helpshift/al;

    .line 45
    iget-object v0, p0, Lcom/helpshift/HSConversation;->b:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iput-object v0, p0, Lcom/helpshift/HSConversation;->c:Lcom/helpshift/dx;

    .line 47
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 48
    iget-object v0, p0, Lcom/helpshift/HSConversation;->c:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->t()Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->c()Lcom/helpshift/app/a;

    move-result-object v0

    .line 51
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->a(I)V

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->a(Z)V

    .line 54
    sget v0, Lcom/helpshift/h;->c:I

    invoke-virtual {p0, v0}, Lcom/helpshift/HSConversation;->setContentView(I)V

    .line 56
    sget-object v0, Lcom/helpshift/d/b/a;->a:Ljava/util/Map;

    const-string/jumbo v1, "hl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget v0, Lcom/helpshift/g;->j:I

    invoke-virtual {p0, v0}, Lcom/helpshift/HSConversation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 59
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    sget-object v1, Lcom/helpshift/d/a/b;->a:Ljava/util/Map;

    const-string/jumbo v4, "newHSLogo"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/helpshift/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    const v1, 0x106000c

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/helpshift/HSConversation;->d:Landroid/os/Bundle;

    .line 67
    const-string/jumbo v0, "chatLaunchSource"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "decomp"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/helpshift/ah;->a:Z

    .line 71
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSConversation;->e:Landroid/support/v4/app/FragmentTransaction;

    .line 73
    const-string/jumbo v1, "newConversation"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->e()V

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string/jumbo v1, "push"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->f()V

    goto :goto_0

    .line 79
    :cond_3
    invoke-direct {p0}, Lcom/helpshift/HSConversation;->d()V

    goto :goto_0
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/helpshift/m;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/helpshift/HSConversation;->c:Lcom/helpshift/dx;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->c(Ljava/lang/Boolean;)V

    .line 167
    invoke-super {p0}, Lcom/helpshift/m;->onDestroy()V

    .line 168
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 134
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/helpshift/HSConversation;->c:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->t()Ljava/lang/String;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/helpshift/HSConversation;->c:Lcom/helpshift/dx;

    invoke-virtual {v2}, Lcom/helpshift/dx;->v()Ljava/lang/String;

    move-result-object v2

    .line 138
    const-string/jumbo v3, "newConversation"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    invoke-static {}, Lcom/helpshift/HSConversation;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 143
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/helpshift/HSConversation;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->finish()V

    .line 147
    :cond_1
    invoke-static {p0}, Lcom/helpshift/e/c;->c(Landroid/app/Activity;)V

    .line 148
    if-eqz v0, :cond_2

    .line 149
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->isFinishing()Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 151
    invoke-static {}, Lcom/helpshift/e/c;->a()V

    .line 154
    :cond_2
    invoke-super {p0}, Lcom/helpshift/m;->onPause()V

    .line 155
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/helpshift/HSConversation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/helpshift/HSConversation;->c:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->t()Ljava/lang/String;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/helpshift/HSConversation;->c:Lcom/helpshift/dx;

    invoke-virtual {v2}, Lcom/helpshift/dx;->v()Ljava/lang/String;

    move-result-object v2

    .line 121
    const-string/jumbo v3, "newConversation"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/helpshift/e/c;->c(Landroid/app/Activity;)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/helpshift/HSConversation;->c:Lcom/helpshift/dx;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->c(Ljava/lang/Boolean;)V

    .line 129
    invoke-super {p0}, Lcom/helpshift/m;->onResume()V

    .line 130
    return-void

    .line 126
    :cond_1
    invoke-static {p0}, Lcom/helpshift/e/c;->b(Landroid/app/Activity;)V

    goto :goto_0
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
