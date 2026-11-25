.class public final Lcom/helpshift/HSFaqsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/helpshift/f/e;
.implements Lcom/helpshift/f/g;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/helpshift/m;

.field private c:Landroid/os/Bundle;

.field private d:Ljava/lang/String;

.field private e:Lcom/helpshift/al;

.field private f:Landroid/widget/ArrayAdapter;

.field private g:Landroid/widget/ArrayAdapter;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/l;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/l;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/ListView;

.field private k:Landroid/view/View;

.field private l:Lcom/helpshift/f/a;

.field private m:Landroid/view/MenuItem;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Lcom/helpshift/app/a;

.field private u:Landroid/os/Handler;

.field private v:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 47
    const-string/jumbo v0, "HelpShiftDebug"

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->a:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->h:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->i:Ljava/util/List;

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->n:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->o:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/helpshift/HSFaqsFragment;->p:Z

    .line 63
    iput-boolean v1, p0, Lcom/helpshift/HSFaqsFragment;->q:Z

    .line 64
    iput-boolean v1, p0, Lcom/helpshift/HSFaqsFragment;->r:Z

    .line 212
    new-instance v0, Lcom/helpshift/bp;

    invoke-direct {v0, p0}, Lcom/helpshift/bp;-><init>(Lcom/helpshift/HSFaqsFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->u:Landroid/os/Handler;

    .line 251
    new-instance v0, Lcom/helpshift/bq;

    invoke-direct {v0, p0}, Lcom/helpshift/bq;-><init>(Lcom/helpshift/HSFaqsFragment;)V

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->v:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/helpshift/HSFaqsFragment;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->m:Landroid/view/MenuItem;

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 279
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/helpshift/HSFaqsFragment;->r:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :goto_0
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    .line 286
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 287
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/l;

    .line 288
    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->k:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 292
    return-void
.end method

.method static synthetic b(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/app/a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->t:Lcom/helpshift/app/a;

    return-object v0
.end method

.method static synthetic c(Lcom/helpshift/HSFaqsFragment;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/helpshift/HSFaqsFragment;->f()V

    return-void
.end method

.method static synthetic d(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/m;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 326
    :try_start_0
    const-string/jumbo v0, "s"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    const-string/jumbo v0, "s"

    invoke-static {v0, v1}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 331
    iput-object p1, p0, Lcom/helpshift/HSFaqsFragment;->n:Ljava/lang/String;

    .line 333
    :cond_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Lcom/helpshift/ek;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic e(Lcom/helpshift/HSFaqsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/helpshift/HSFaqsFragment;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->t:Lcom/helpshift/app/a;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->m:Landroid/view/MenuItem;

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->b(Landroid/view/MenuItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-direct {p0, v0}, Lcom/helpshift/HSFaqsFragment;->d(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method static synthetic g(Lcom/helpshift/HSFaqsFragment;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->q:Z

    return v0
.end method

.method static synthetic h(Lcom/helpshift/HSFaqsFragment;)Lcom/helpshift/al;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->e:Lcom/helpshift/al;

    return-object v0
.end method

.method static synthetic i(Lcom/helpshift/HSFaqsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/helpshift/HSFaqsFragment;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->f:Landroid/widget/ArrayAdapter;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->e:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpshift/HSFaqsFragment;->a(Ljava/util/ArrayList;)V

    .line 276
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/HSFaqsFragment;->d:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->s:Ljava/lang/String;

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->s:Ljava/lang/String;

    const-string/jumbo v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->s:Ljava/lang/String;

    const-string/jumbo v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    const/4 v0, 0x1

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    if-nez v0, :cond_3

    .line 268
    :cond_2
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->a()V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->e:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->d:Ljava/lang/String;

    sget-object v2, Lcom/helpshift/dl;->a:Lcom/helpshift/dl;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/al;->a(Ljava/lang/String;Lcom/helpshift/dl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpshift/HSFaqsFragment;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->j:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/helpshift/HSFaqsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 299
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->p:Z

    .line 301
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method protected c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 304
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->j:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->r:Z

    if-ne v0, v4, :cond_0

    .line 305
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 310
    :goto_0
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->a()V

    .line 311
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/helpshift/HSFaqsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 312
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 313
    iput-boolean v4, p0, Lcom/helpshift/HSFaqsFragment;->p:Z

    .line 314
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->k:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 308
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/helpshift/HSFaqsFragment;->d(Ljava/lang/String;)V

    .line 347
    :goto_0
    invoke-virtual {p0, p1}, Lcom/helpshift/HSFaqsFragment;->a(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    return v0

    .line 345
    :cond_0
    iput-object p1, p0, Lcom/helpshift/HSFaqsFragment;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 353
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->n:Ljava/lang/String;

    .line 354
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->o:Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->l:Lcom/helpshift/f/a;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->l:Lcom/helpshift/f/a;

    invoke-virtual {v0, v1}, Lcom/helpshift/f/a;->a(Z)V

    .line 358
    :cond_0
    iget-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->q:Z

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->t:Lcom/helpshift/app/a;

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->b(I)V

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->c()V

    .line 362
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    invoke-virtual {v0, v1}, Lcom/helpshift/m;->a(Z)V

    .line 363
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->t:Lcom/helpshift/app/a;

    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/e/al;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->c(I)V

    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 369
    invoke-direct {p0}, Lcom/helpshift/HSFaqsFragment;->f()V

    .line 370
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->l:Lcom/helpshift/f/a;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->l:Lcom/helpshift/f/a;

    invoke-virtual {v0, v1}, Lcom/helpshift/f/a;->a(Z)V

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->b()V

    .line 374
    sget-object v0, Lcom/helpshift/c;->a:Lcom/helpshift/c;

    invoke-static {v0}, Lcom/helpshift/a;->a(Lcom/helpshift/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    invoke-virtual {v0, v1}, Lcom/helpshift/m;->a(Z)V

    .line 377
    :cond_1
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    .line 111
    sget v0, Lcom/helpshift/g;->m:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->m:Landroid/view/MenuItem;

    .line 112
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->m:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->t:Lcom/helpshift/app/a;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->m:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/k;->h:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/app/a;->a(Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->t:Lcom/helpshift/app/a;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->m:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, p0}, Lcom/helpshift/app/a;->a(Landroid/view/MenuItem;Lcom/helpshift/f/g;)V

    .line 116
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->t:Lcom/helpshift/app/a;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->m:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, p0}, Lcom/helpshift/app/a;->a(Landroid/view/MenuItem;Lcom/helpshift/f/e;)V

    .line 118
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->e:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->q()V

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/helpshift/m;

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    .line 72
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    invoke-virtual {v0}, Lcom/helpshift/m;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->c:Landroid/os/Bundle;

    .line 73
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->q:Z

    .line 75
    sget-object v0, Lcom/helpshift/c;->b:Lcom/helpshift/c;

    invoke-static {v0}, Lcom/helpshift/a;->a(Lcom/helpshift/c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->r:Z

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    invoke-virtual {v0}, Lcom/helpshift/m;->c()Lcom/helpshift/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->t:Lcom/helpshift/app/a;

    .line 79
    new-instance v0, Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    invoke-direct {v0, v1}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->e:Lcom/helpshift/al;

    .line 81
    iget-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->r:Z

    if-ne v0, v4, :cond_1

    .line 82
    sget v0, Lcom/helpshift/h;->d:I

    invoke-virtual {p1, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->k:Landroid/view/View;

    .line 89
    :goto_0
    sget v0, Lcom/helpshift/h;->f:I

    .line 91
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    iget-object v3, p0, Lcom/helpshift/HSFaqsFragment;->h:Ljava/util/List;

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/helpshift/HSFaqsFragment;->f:Landroid/widget/ArrayAdapter;

    .line 94
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    iget-object v3, p0, Lcom/helpshift/HSFaqsFragment;->i:Ljava/util/List;

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/helpshift/HSFaqsFragment;->g:Landroid/widget/ArrayAdapter;

    .line 97
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/helpshift/HSFaqsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    invoke-virtual {p0, v4}, Lcom/helpshift/HSFaqsFragment;->setHasOptionsMenu(Z)V

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->s:Ljava/lang/String;

    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 85
    :cond_1
    sget v0, Lcom/helpshift/h;->e:I

    invoke-virtual {p1, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->k:Landroid/view/View;

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->p:Z

    if-eqz v0, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/helpshift/HSFaqsFragment;->f()V

    .line 180
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->i:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/l;

    .line 185
    :goto_0
    invoke-virtual {v0}, Lcom/helpshift/l;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "empty_status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/helpshift/l;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "section"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    const-class v3, Lcom/helpshift/HSQuestionsList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const-string/jumbo v2, "sectionPublishId"

    invoke-virtual {v0}, Lcom/helpshift/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    .line 194
    :goto_1
    const-string/jumbo v1, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    invoke-static {v2}, Lcom/helpshift/e/c;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 196
    const-string/jumbo v1, "isRoot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 199
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->h:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/l;

    goto :goto_0

    .line 190
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    const-class v3, Lcom/helpshift/HSQuestion;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    const-string/jumbo v2, "questionPublishId"

    invoke-virtual {v0}, Lcom/helpshift/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string/jumbo v0, "decomp"

    iget-boolean v2, p0, Lcom/helpshift/HSFaqsFragment;->q:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 168
    sget-object v0, Lcom/helpshift/c;->a:Lcom/helpshift/c;

    invoke-static {v0}, Lcom/helpshift/a;->a(Lcom/helpshift/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    iget-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/helpshift/m;->a(Z)V

    .line 171
    :cond_0
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/helpshift/HSFaqsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/HSFaqsFragment;->j:Landroid/widget/ListView;

    .line 126
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/helpshift/bn;

    invoke-direct {v1, p0}, Lcom/helpshift/bn;-><init>(Lcom/helpshift/HSFaqsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    iget-boolean v0, p0, Lcom/helpshift/HSFaqsFragment;->r:Z

    if-ne v0, v4, :cond_0

    .line 137
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->k:Landroid/view/View;

    sget v1, Lcom/helpshift/g;->n:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 138
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/helpshift/e/ak;->c(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 139
    new-instance v1, Lcom/helpshift/bo;

    invoke-direct {v1, p0}, Lcom/helpshift/bo;-><init>(Lcom/helpshift/HSFaqsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/helpshift/HSFaqsFragment;->setListShown(Z)V

    .line 155
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->e:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->u:Landroid/os/Handler;

    iget-object v2, p0, Lcom/helpshift/HSFaqsFragment;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->b:Lcom/helpshift/m;

    sget v2, Lcom/helpshift/em;->hs__contentSeparatorColor:I

    invoke-static {v1, v2}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 161
    iget-object v1, p0, Lcom/helpshift/HSFaqsFragment;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v0, p0, Lcom/helpshift/HSFaqsFragment;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 163
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/helpshift/ek;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
