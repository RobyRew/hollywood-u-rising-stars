.class public final Lcom/helpshift/HSQuestionFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private A:Landroid/os/Handler;

.field public a:Landroid/os/Handler;

.field public b:Landroid/os/Handler;

.field c:Landroid/view/View$OnClickListener;

.field d:Landroid/view/View$OnClickListener;

.field private e:Lcom/helpshift/al;

.field private f:Lcom/helpshift/dx;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/Button;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Boolean;

.field private m:I

.field private n:Lcom/helpshift/m;

.field private o:Lcom/helpshift/e/w;

.field private p:Ljava/lang/Boolean;

.field private q:Ljava/lang/Boolean;

.field private r:Ljava/lang/Boolean;

.field private s:Ljava/lang/Boolean;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Lorg/json/JSONObject;

.field private z:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->g:Ljava/lang/String;

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->l:Ljava/lang/Boolean;

    .line 38
    iput v1, p0, Lcom/helpshift/HSQuestionFragment;->m:I

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->q:Ljava/lang/Boolean;

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->r:Ljava/lang/Boolean;

    .line 44
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->s:Ljava/lang/Boolean;

    .line 110
    new-instance v0, Lcom/helpshift/cs;

    invoke-direct {v0, p0}, Lcom/helpshift/cs;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->a:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/helpshift/ct;

    invoke-direct {v0, p0}, Lcom/helpshift/ct;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->b:Landroid/os/Handler;

    .line 143
    new-instance v0, Lcom/helpshift/cu;

    invoke-direct {v0, p0}, Lcom/helpshift/cu;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->A:Landroid/os/Handler;

    .line 336
    new-instance v0, Lcom/helpshift/cx;

    invoke-direct {v0, p0}, Lcom/helpshift/cx;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->c:Landroid/view/View$OnClickListener;

    .line 343
    new-instance v0, Lcom/helpshift/cy;

    invoke-direct {v0, p0}, Lcom/helpshift/cy;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/helpshift/HSQuestionFragment;)Lcom/helpshift/m;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->n:Lcom/helpshift/m;

    return-object v0
.end method

.method static synthetic a(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/helpshift/HSQuestionFragment;->q:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/helpshift/HSQuestionFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/helpshift/HSQuestionFragment;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 381
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 382
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->y:Lorg/json/JSONObject;

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->y:Lorg/json/JSONObject;

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string/jumbo v0, "f"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string/jumbo v0, "h"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->e:Lcom/helpshift/al;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p3, v2, v1}, Lcom/helpshift/al;->a(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->e:Lcom/helpshift/al;

    invoke-virtual {v1, p1, v0, p3, p4}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 395
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/helpshift/HSQuestionFragment;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpshift/HSQuestionFragment;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/helpshift/HSQuestionFragment;Lcom/helpshift/l;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/helpshift/HSQuestionFragment;->a(Lcom/helpshift/l;)V

    return-void
.end method

.method private a(Lcom/helpshift/l;)V
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/helpshift/l;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->k:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Lcom/helpshift/l;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->j:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Lcom/helpshift/l;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->g:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Lcom/helpshift/l;->h()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->l:Ljava/lang/Boolean;

    .line 260
    invoke-virtual {p1}, Lcom/helpshift/l;->g()I

    move-result v0

    iput v0, p0, Lcom/helpshift/HSQuestionFragment;->m:I

    .line 261
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->g()V

    .line 262
    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    const-string/jumbo v0, ""

    .line 55
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/helpshift/k;->j:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->n:Lcom/helpshift/m;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 61
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 62
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 63
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/helpshift/k;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 427
    const-string/jumbo v0, "ticketAvoided"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->h()V

    .line 429
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->f:Lcom/helpshift/dx;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->w(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->f:Lcom/helpshift/dx;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->y(Ljava/lang/String;)V

    .line 435
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 438
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 439
    return-void

    .line 431
    :cond_1
    const-string/jumbo v0, "startConversation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string/jumbo v0, "taf"

    invoke-static {v0}, Lcom/helpshift/br;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/helpshift/HSQuestionFragment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->q:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic b(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/helpshift/HSQuestionFragment;->r:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic b(Lcom/helpshift/HSQuestionFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/helpshift/HSQuestionFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/helpshift/HSQuestionFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/helpshift/HSQuestionFragment;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic d(Lcom/helpshift/HSQuestionFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/helpshift/HSQuestionFragment;->s:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic d(Lcom/helpshift/HSQuestionFragment;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->y:Lorg/json/JSONObject;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->t:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->u:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->i:Landroid/widget/Button;

    sget v1, Lcom/helpshift/k;->O:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 94
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->t:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->u:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    return-void
.end method

.method static synthetic e(Lcom/helpshift/HSQuestionFragment;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 104
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->t:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->u:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->w:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    return-void
.end method

.method static synthetic f(Lcom/helpshift/HSQuestionFragment;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->e()V

    return-void
.end method

.method static synthetic g(Lcom/helpshift/HSQuestionFragment;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->z:Landroid/os/Bundle;

    return-object v0
.end method

.method private g()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    const v6, 0xffffff

    const/4 v5, 0x1

    .line 193
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->n:Lcom/helpshift/m;

    sget v2, Lcom/helpshift/g;->v:I

    invoke-virtual {v0, v2}, Lcom/helpshift/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 195
    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->n:Lcom/helpshift/m;

    invoke-virtual {v2}, Lcom/helpshift/m;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 200
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    if-nez v3, :cond_1

    .line 201
    new-instance v3, Lcom/helpshift/e/w;

    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/helpshift/e/w;-><init>(Landroid/content/Context;Lcom/helpshift/HSQuestionFragment;)V

    iput-object v3, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    .line 202
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    invoke-virtual {v3}, Lcom/helpshift/e/w;->a()Landroid/widget/FrameLayout;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {v2, v8, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 206
    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    invoke-virtual {v3, v0}, Lcom/helpshift/e/w;->setBackgroundColor(I)V

    .line 208
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    invoke-virtual {v0}, Lcom/helpshift/e/w;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 210
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-gt v3, v4, :cond_0

    .line 211
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 214
    :cond_0
    sget-object v3, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->j:Ljava/lang/String;

    const-string/jumbo v3, "<iframe"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->j:Ljava/lang/String;

    const-string/jumbo v3, "https"

    const-string/jumbo v4, "http"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_2
    :goto_0
    const-string/jumbo v0, "#%06X"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    and-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    const-string/jumbo v0, "<html dir=\"rtl\">"

    .line 235
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "<head>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "<style type=\"text/css\">img, object, embed { max-width: 100%; }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "body { margin: 0px 10px 10px 0px; padding: 0; line-height: 1.5; white-space: normal; word-wrap: break-word; color: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".title { display:block; margin: -12px 0 6px 0; padding: 0; font-size: 1.3125em; line-height: 1.25 }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</style>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "<script language=\"javascript\">var iframe = document.getElementsByTagName (\"iframe\") [0]; if (iframe) { iframe.width = \"100%\"; iframe.style.width = \"100%\"; }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "document.addEventListener(\'click\',function(event) {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "if (event.target instanceof HTMLImageElement) { event.preventDefault(); event.stopPropagation(); }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}, false);"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</script>\u200b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</head>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "<body>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "<strong class=\'title\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</strong>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</body>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/e/w;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string/jumbo v3, "HelpShiftDebug"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 232
    :cond_3
    const-string/jumbo v0, "<html>"

    goto/16 :goto_1

    .line 195
    :array_0
    .array-data 4
        0x1010031
        0x1010036
    .end array-data
.end method

.method private h()V
    .locals 3

    .prologue
    .line 416
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 418
    :try_start_0
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    const-string/jumbo v1, "str"

    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->f:Lcom/helpshift/dx;

    invoke-virtual {v2}, Lcom/helpshift/dx;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    const-string/jumbo v1, "ta"

    invoke-static {v1, v0}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "sendTicketAvoidedEvent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/helpshift/HSQuestionFragment;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->f()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget v0, p0, Lcom/helpshift/HSQuestionFragment;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 69
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->e()V

    goto :goto_0

    .line 70
    :cond_2
    iget v0, p0, Lcom/helpshift/HSQuestionFragment;->m:I

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/helpshift/HSQuestionFragment;->d()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/helpshift/HSQuestion;

    .line 357
    invoke-virtual {v0}, Lcom/helpshift/HSQuestion;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 443
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 377
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/helpshift/m;

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->n:Lcom/helpshift/m;

    .line 268
    new-instance v0, Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->n:Lcom/helpshift/m;

    invoke-direct {v0, v1}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->e:Lcom/helpshift/al;

    .line 269
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->e:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->f:Lcom/helpshift/dx;

    .line 271
    sget v0, Lcom/helpshift/h;->i:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    invoke-virtual {v0}, Lcom/helpshift/e/w;->freeMemory()V

    .line 367
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    invoke-virtual {v0}, Lcom/helpshift/e/w;->removeAllViews()V

    .line 368
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    invoke-virtual {v0}, Lcom/helpshift/e/w;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 369
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    invoke-virtual {v0}, Lcom/helpshift/e/w;->destroy()V

    .line 371
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 372
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 399
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 400
    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 401
    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    invoke-virtual {v1}, Lcom/helpshift/e/w;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    invoke-virtual {v1}, Lcom/helpshift/e/w;->c()V

    .line 411
    :goto_0
    return v0

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 407
    :cond_1
    sget v2, Lcom/helpshift/g;->ag:I

    if-ne v1, v2, :cond_2

    .line 408
    const-string/jumbo v1, "ticketAvoided"

    invoke-direct {p0, v1}, Lcom/helpshift/HSQuestionFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onPause"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 189
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 190
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "ClassNotFoundException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 182
    :catch_1
    move-exception v0

    .line 183
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "NoSuchMethodException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 184
    :catch_2
    move-exception v0

    .line 185
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "InvocationTargetException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 186
    :catch_3
    move-exception v0

    .line 187
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "IllegalAccessException : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->o:Lcom/helpshift/e/w;

    invoke-virtual {v0}, Lcom/helpshift/e/w;->onResume()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 162
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string/jumbo v1, "f"

    invoke-static {v1, v0}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 164
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->q:Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 170
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "JSONException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 277
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 278
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->n:Lcom/helpshift/m;

    invoke-virtual {v0}, Lcom/helpshift/m;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->z:Landroid/os/Bundle;

    .line 279
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->z:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->z:Landroid/os/Bundle;

    const-string/jumbo v1, "questionPublishId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->z:Landroid/os/Bundle;

    const-string/jumbo v1, "isDecomp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 282
    sput-boolean v4, Lcom/helpshift/ah;->a:Z

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->z:Landroid/os/Bundle;

    const-string/jumbo v1, "questionPublishId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->e:Lcom/helpshift/al;

    iget-object v2, p0, Lcom/helpshift/HSQuestionFragment;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/HSQuestionFragment;->A:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/helpshift/al;->c(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 287
    :cond_1
    sget-object v0, Lcom/helpshift/c;->c:Lcom/helpshift/c;

    invoke-static {v0}, Lcom/helpshift/a;->a(Lcom/helpshift/c;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->p:Ljava/lang/Boolean;

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->n:Lcom/helpshift/m;

    invoke-virtual {v0}, Lcom/helpshift/m;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v4, [I

    const v2, 0x1010031

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    const v1, 0xffffff

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 294
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    invoke-virtual {p0}, Lcom/helpshift/HSQuestionFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 297
    sget v0, Lcom/helpshift/g;->w:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->h:Landroid/widget/LinearLayout;

    .line 298
    sget v0, Lcom/helpshift/g;->x:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->v:Landroid/widget/TextView;

    .line 299
    sget v0, Lcom/helpshift/g;->y:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->w:Landroid/widget/TextView;

    .line 300
    sget v0, Lcom/helpshift/g;->z:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->x:Landroid/widget/TextView;

    .line 301
    sget v0, Lcom/helpshift/g;->A:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->i:Landroid/widget/Button;

    .line 302
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->n:Lcom/helpshift/m;

    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->i:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->c(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 304
    sget v0, Lcom/helpshift/g;->B:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->t:Landroid/widget/Button;

    .line 305
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->t:Landroid/widget/Button;

    new-instance v1, Lcom/helpshift/cv;

    invoke-direct {v1, p0}, Lcom/helpshift/cv;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    sget v0, Lcom/helpshift/g;->C:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/helpshift/HSQuestionFragment;->u:Landroid/widget/Button;

    .line 320
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->u:Landroid/widget/Button;

    new-instance v1, Lcom/helpshift/cw;

    invoke-direct {v1, p0}, Lcom/helpshift/cw;-><init>(Lcom/helpshift/HSQuestionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/helpshift/HSQuestionFragment;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/helpshift/HSQuestionFragment;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    invoke-virtual {p0, v4}, Lcom/helpshift/HSQuestionFragment;->setHasOptionsMenu(Z)V

    .line 334
    return-void
.end method
