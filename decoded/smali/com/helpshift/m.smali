.class Lcom/helpshift/m;
.super Lcom/helpshift/app/ActionBarActivity;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Landroid/os/Bundle;

.field private c:Z

.field private d:Z

.field private e:Landroid/view/MenuItem;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/Thread;

.field private i:Landroid/os/Handler;

.field private j:Lcom/helpshift/dx;

.field private k:Lcom/helpshift/al;

.field private l:Landroid/view/Menu;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/helpshift/app/ActionBarActivity;-><init>()V

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/helpshift/m;->a:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/m;->l:Landroid/view/Menu;

    return-void
.end method

.method static synthetic a(Lcom/helpshift/m;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/helpshift/m;->i:Landroid/os/Handler;

    return-object p1
.end method

.method private a(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/helpshift/m;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 216
    sget v1, Lcom/helpshift/i;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 218
    sget v0, Lcom/helpshift/g;->a:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/m;->e:Landroid/view/MenuItem;

    .line 219
    iget-object v0, p0, Lcom/helpshift/m;->e:Landroid/view/MenuItem;

    invoke-static {v0}, Lcom/helpshift/f/d;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 221
    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 225
    :cond_0
    sget v1, Lcom/helpshift/g;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/helpshift/m;->f:Landroid/widget/TextView;

    .line 226
    sget v1, Lcom/helpshift/g;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/helpshift/m;->g:Landroid/widget/TextView;

    .line 228
    iget-object v1, p0, Lcom/helpshift/m;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v1, p0, Lcom/helpshift/m;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/helpshift/e/ak;->b(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 231
    new-instance v1, Lcom/helpshift/r;

    invoke-direct {v1, p0}, Lcom/helpshift/r;-><init>(Lcom/helpshift/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-direct {p0}, Lcom/helpshift/m;->d()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/helpshift/m;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/helpshift/m;->d()V

    return-void
.end method

.method static synthetic b(Lcom/helpshift/m;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/helpshift/m;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/helpshift/m;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/helpshift/m;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/helpshift/m;)Lcom/helpshift/al;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/helpshift/m;->k:Lcom/helpshift/al;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/helpshift/m;->j:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->g()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/helpshift/m;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 103
    if-lez v0, :cond_1

    .line 104
    iget-object v1, p0, Lcom/helpshift/m;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/helpshift/m;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/helpshift/m;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/helpshift/m;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/helpshift/m;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/helpshift/m;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/helpshift/m;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/helpshift/HSConversation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    const-string/jumbo v1, "showInFullScreen"

    invoke-static {p0}, Lcom/helpshift/e/c;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 188
    const-string/jumbo v1, "chatLaunchSource"

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/helpshift/m;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 190
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/m;->startActivityForResult(Landroid/content/Intent;I)V

    .line 192
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 257
    const-string/jumbo v1, "callFinish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/helpshift/m;->setResult(ILandroid/content/Intent;)V

    .line 259
    invoke-virtual {p0}, Lcom/helpshift/m;->finish()V

    .line 260
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/helpshift/m;->b()V

    .line 61
    iget-object v0, p0, Lcom/helpshift/m;->j:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->t()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/helpshift/n;

    invoke-direct {v1, p0}, Lcom/helpshift/n;-><init>(Lcom/helpshift/m;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/helpshift/m;->h:Ljava/lang/Thread;

    .line 97
    iget-object v0, p0, Lcom/helpshift/m;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/helpshift/m;->e:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/helpshift/m;->e:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/helpshift/m;->l:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/helpshift/m;->l:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/helpshift/m;->a(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0, p1, p2, p3}, Lcom/helpshift/app/ActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 243
    if-eqz p3, :cond_0

    .line 244
    const-string/jumbo v0, "callFinish"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 245
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 247
    instance-of v1, p0, Lcom/helpshift/HSConversation;

    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/helpshift/m;->onBackPressed()V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/helpshift/m;->f()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/helpshift/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/helpshift/m;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/m;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/m;->b:Landroid/os/Bundle;

    .line 123
    iget-object v0, p0, Lcom/helpshift/m;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "showConvOnReportIssue"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/helpshift/m;->d:Z

    .line 124
    new-instance v0, Lcom/helpshift/al;

    invoke-direct {v0, p0}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/m;->k:Lcom/helpshift/al;

    .line 125
    iget-object v0, p0, Lcom/helpshift/m;->k:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iput-object v0, p0, Lcom/helpshift/m;->j:Lcom/helpshift/dx;

    .line 127
    instance-of v0, p0, Lcom/helpshift/HSQuestion;

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Lcom/helpshift/c;->d:Lcom/helpshift/c;

    invoke-static {v0}, Lcom/helpshift/a;->a(Lcom/helpshift/c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/helpshift/m;->c:Z

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_1
    sget-object v0, Lcom/helpshift/c;->a:Lcom/helpshift/c;

    invoke-static {v0}, Lcom/helpshift/a;->a(Lcom/helpshift/c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/helpshift/m;->c:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/helpshift/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 176
    iput-object p1, p0, Lcom/helpshift/m;->l:Landroid/view/Menu;

    .line 177
    iget-boolean v0, p0, Lcom/helpshift/m;->c:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/helpshift/HSConversation;

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/helpshift/m;->a(Landroid/view/Menu;)V

    .line 182
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onPause()V

    .line 169
    invoke-direct {p0}, Lcom/helpshift/m;->b()V

    .line 170
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onResume()V

    .line 141
    instance-of v0, p0, Lcom/helpshift/HSQuestion;

    if-eqz v0, :cond_2

    .line 142
    sget-object v0, Lcom/helpshift/c;->d:Lcom/helpshift/c;

    invoke-static {v0}, Lcom/helpshift/a;->a(Lcom/helpshift/c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/helpshift/m;->c:Z

    .line 147
    :goto_0
    iget-boolean v0, p0, Lcom/helpshift/m;->c:Z

    if-nez v0, :cond_3

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/helpshift/m;->a(Z)V

    .line 157
    :cond_0
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/m;->j:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->y()Lorg/json/JSONObject;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-static {v0}, Lcom/helpshift/d/b/a;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_1
    :goto_2
    return-void

    .line 144
    :cond_2
    sget-object v0, Lcom/helpshift/c;->a:Lcom/helpshift/c;

    invoke-static {v0}, Lcom/helpshift/a;->a(Lcom/helpshift/c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/helpshift/m;->c:Z

    goto :goto_0

    .line 149
    :cond_3
    iget-boolean v0, p0, Lcom/helpshift/m;->c:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/helpshift/HSConversation;

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/helpshift/m;->a(Z)V

    .line 151
    iget-object v0, p0, Lcom/helpshift/m;->j:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/helpshift/m;->d()V

    .line 153
    invoke-virtual {p0}, Lcom/helpshift/m;->a()V

    goto :goto_1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/helpshift/ek;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onStart()V

    .line 197
    invoke-static {p0}, Lcom/helpshift/ah;->a(Landroid/app/Activity;)V

    .line 198
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/helpshift/app/ActionBarActivity;->onStop()V

    .line 203
    invoke-static {p0}, Lcom/helpshift/ah;->b(Landroid/app/Activity;)V

    .line 204
    return-void
.end method
