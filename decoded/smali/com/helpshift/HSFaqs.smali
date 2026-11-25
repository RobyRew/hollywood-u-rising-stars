.class public final Lcom/helpshift/HSFaqs;
.super Lcom/helpshift/m;
.source "SourceFile"


# instance fields
.field private a:Lcom/helpshift/al;

.field private b:Lcom/helpshift/dx;

.field private c:I

.field private d:Ljava/lang/Boolean;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/helpshift/m;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/helpshift/HSFaqs;->c:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 49
    invoke-super {p0, p1}, Lcom/helpshift/m;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/ah;->a:Z

    .line 52
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "showConvOnReportIssue"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSFaqs;->d:Ljava/lang/Boolean;

    .line 53
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 60
    :cond_0
    new-instance v0, Lcom/helpshift/al;

    invoke-direct {v0, p0}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/HSFaqs;->a:Lcom/helpshift/al;

    .line 61
    iget-object v0, p0, Lcom/helpshift/HSFaqs;->a:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iput-object v0, p0, Lcom/helpshift/HSFaqs;->b:Lcom/helpshift/dx;

    .line 63
    sget v0, Lcom/helpshift/h;->a:I

    invoke-virtual {p0, v0}, Lcom/helpshift/HSFaqs;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->c()Lcom/helpshift/app/a;

    move-result-object v0

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->a(Z)V

    .line 67
    sget v0, Lcom/helpshift/g;->l:I

    invoke-virtual {p0, v0}, Lcom/helpshift/HSFaqs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/helpshift/HSFaqs;->e:Landroid/widget/ImageView;

    .line 69
    sget-object v0, Lcom/helpshift/d/b/a;->a:Ljava/util/Map;

    const-string/jumbo v1, "hl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v1, p0, Lcom/helpshift/HSFaqs;->e:Landroid/widget/ImageView;

    sget-object v0, Lcom/helpshift/d/a/b;->a:Ljava/util/Map;

    const-string/jumbo v2, "newHSLogo"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/helpshift/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v0, p0, Lcom/helpshift/HSFaqs;->e:Landroid/widget/ImageView;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 74
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/helpshift/i;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    invoke-super {p0, p1}, Lcom/helpshift/m;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 85
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->finish()V

    .line 87
    const/4 v0, 0x1

    .line 89
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

    .line 36
    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/helpshift/HSFaqs;->isFinishing()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 40
    invoke-static {}, Lcom/helpshift/e/c;->a()V

    .line 44
    :cond_0
    invoke-super {p0}, Lcom/helpshift/m;->onPause()V

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/helpshift/m;->onResume()V

    .line 31
    const-string/jumbo v0, "l"

    invoke-static {v0}, Lcom/helpshift/br;->a(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public bridge synthetic onStart()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/helpshift/m;->onStart()V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/helpshift/m;->onStop()V

    return-void
.end method
