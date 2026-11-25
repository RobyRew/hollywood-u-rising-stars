.class public final Lcom/helpshift/do;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/helpshift/bm;
.implements Lcom/helpshift/f/e;
.implements Lcom/helpshift/f/g;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/l;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/l;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/helpshift/m;

.field private d:Lcom/helpshift/al;

.field private e:Landroid/widget/ArrayAdapter;

.field private f:Landroid/widget/ArrayAdapter;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/MenuItem;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/Boolean;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Lcom/helpshift/app/a;

.field private w:Landroid/os/Handler;

.field private x:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/do;->a:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/do;->b:Ljava/util/ArrayList;

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/do;->o:Ljava/lang/String;

    .line 62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/do;->p:Ljava/lang/Boolean;

    .line 63
    iput-boolean v1, p0, Lcom/helpshift/do;->q:Z

    .line 66
    iput-boolean v1, p0, Lcom/helpshift/do;->t:Z

    .line 288
    new-instance v0, Lcom/helpshift/ds;

    invoke-direct {v0, p0}, Lcom/helpshift/ds;-><init>(Lcom/helpshift/do;)V

    iput-object v0, p0, Lcom/helpshift/do;->w:Landroid/os/Handler;

    .line 297
    new-instance v0, Lcom/helpshift/dt;

    invoke-direct {v0, p0}, Lcom/helpshift/dt;-><init>(Lcom/helpshift/do;)V

    iput-object v0, p0, Lcom/helpshift/do;->x:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/helpshift/do;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/helpshift/do;->l:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic a(Lcom/helpshift/do;Lcom/helpshift/ew;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/helpshift/do;->a(Lcom/helpshift/ew;)V

    return-void
.end method

.method private a(Lcom/helpshift/ew;)V
    .locals 5

    .prologue
    .line 242
    iget-object v0, p0, Lcom/helpshift/do;->d:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/do;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/al;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 243
    iget-object v0, p0, Lcom/helpshift/do;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    invoke-virtual {v0}, Lcom/helpshift/app/ActionBarActivity;->c()Lcom/helpshift/app/a;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Lcom/helpshift/ew;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->a(Ljava/lang/String;)V

    .line 248
    :cond_0
    if-nez p1, :cond_1

    .line 249
    const/16 v0, 0x194

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    invoke-static {v0, v1, v2}, Lcom/helpshift/e/u;->a(ILandroid/app/ProgressDialog;Landroid/content/Context;)V

    .line 285
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/helpshift/do;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 252
    invoke-virtual {p1}, Lcom/helpshift/ew;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/do;->g:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Lcom/helpshift/ew;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/do;->h:Ljava/lang/String;

    .line 263
    invoke-virtual {p0}, Lcom/helpshift/do;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/helpshift/do;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/helpshift/do;->t:Z

    if-nez v0, :cond_2

    .line 265
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 266
    const-string/jumbo v1, "id"

    iget-object v3, p0, Lcom/helpshift/do;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string/jumbo v1, "b"

    invoke-static {v1, v0}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/do;->t:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_2
    :goto_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 274
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/l;

    .line 275
    iget-object v3, p0, Lcom/helpshift/do;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/helpshift/do;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 279
    iget-object v0, p0, Lcom/helpshift/do;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/helpshift/l;

    invoke-virtual {p0}, Lcom/helpshift/do;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/k;->i:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    const-string/jumbo v4, "empty_status"

    invoke-direct {v1, v2, v3, v4}, Lcom/helpshift/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/helpshift/do;->e:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
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

    .line 349
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/helpshift/do;->r:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/helpshift/do;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :goto_0
    iget-object v1, p0, Lcom/helpshift/do;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    .line 356
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 357
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/l;

    .line 358
    invoke-virtual {v0}, Lcom/helpshift/l;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/do;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/helpshift/do;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 352
    :cond_2
    iget-object v1, p0, Lcom/helpshift/do;->k:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/helpshift/do;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 363
    return-void
.end method

.method static synthetic b(Lcom/helpshift/do;)Lcom/helpshift/app/a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/helpshift/do;->v:Lcom/helpshift/app/a;

    return-object v0
.end method

.method static synthetic c(Lcom/helpshift/do;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/helpshift/do;->h()V

    return-void
.end method

.method static synthetic d(Lcom/helpshift/do;)Lcom/helpshift/m;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/do;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 397
    :try_start_0
    const-string/jumbo v0, "s"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    const-string/jumbo v0, "s"

    invoke-static {v0, v1}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 402
    iput-object p1, p0, Lcom/helpshift/do;->n:Ljava/lang/String;

    .line 404
    :cond_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic e(Lcom/helpshift/do;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/helpshift/do;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/helpshift/do;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/helpshift/do;->o:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/helpshift/do;->v:Lcom/helpshift/app/a;

    iget-object v1, p0, Lcom/helpshift/do;->l:Landroid/view/MenuItem;

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->b(Landroid/view/MenuItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-direct {p0, v0}, Lcom/helpshift/do;->d(Ljava/lang/String;)V

    .line 390
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/helpshift/do;->d:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/do;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/al;->d(Ljava/lang/String;)Lcom/helpshift/ew;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpshift/do;->a(Lcom/helpshift/ew;)V

    .line 228
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/do;->m:Ljava/lang/String;

    .line 333
    iget-object v1, p0, Lcom/helpshift/do;->u:Ljava/lang/String;

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/do;->u:Ljava/lang/String;

    const-string/jumbo v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/do;->u:Ljava/lang/String;

    const-string/jumbo v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    :cond_0
    const/4 v0, 0x1

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/helpshift/do;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/helpshift/do;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    if-nez v0, :cond_3

    .line 338
    :cond_2
    invoke-virtual {p0}, Lcom/helpshift/do;->c()V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/helpshift/do;->d:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/do;->m:Ljava/lang/String;

    sget-object v2, Lcom/helpshift/dl;->a:Lcom/helpshift/dl;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/al;->a(Ljava/lang/String;Lcom/helpshift/dl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpshift/do;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 233
    new-instance v1, Lcom/helpshift/dr;

    invoke-direct {v1, p0}, Lcom/helpshift/dr;-><init>(Lcom/helpshift/do;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/helpshift/do;->d:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/do;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/al;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpshift/do;->a(Ljava/util/ArrayList;)V

    .line 346
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/helpshift/do;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/helpshift/do;->d(Ljava/lang/String;)V

    .line 419
    :goto_0
    invoke-virtual {p0, p1}, Lcom/helpshift/do;->a(Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x0

    return v0

    .line 417
    :cond_0
    iput-object p1, p0, Lcom/helpshift/do;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 425
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/do;->n:Ljava/lang/String;

    .line 426
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/do;->o:Ljava/lang/String;

    .line 427
    invoke-virtual {p0}, Lcom/helpshift/do;->g()V

    .line 428
    iget-object v0, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/m;->a(Z)V

    .line 429
    iget-object v0, p0, Lcom/helpshift/do;->v:Lcom/helpshift/app/a;

    invoke-virtual {p0}, Lcom/helpshift/do;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/e/al;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->c(I)V

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 435
    invoke-direct {p0}, Lcom/helpshift/do;->h()V

    .line 436
    invoke-virtual {p0}, Lcom/helpshift/do;->f()V

    .line 437
    sget-object v0, Lcom/helpshift/c;->a:Lcom/helpshift/c;

    invoke-static {v0}, Lcom/helpshift/a;->a(Lcom/helpshift/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    invoke-virtual {v0, v1}, Lcom/helpshift/m;->a(Z)V

    .line 440
    :cond_0
    return v1
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/helpshift/do;->j:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/helpshift/do;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/do;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/helpshift/do;->e:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/helpshift/do;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    iget-object v0, p0, Lcom/helpshift/do;->e:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/do;->q:Z

    .line 372
    return-void
.end method

.method protected g()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 375
    iget-object v0, p0, Lcom/helpshift/do;->j:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/helpshift/do;->r:Z

    if-ne v0, v4, :cond_0

    .line 376
    iget-object v0, p0, Lcom/helpshift/do;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/do;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 381
    :goto_0
    invoke-virtual {p0}, Lcom/helpshift/do;->c()V

    .line 382
    iget-object v0, p0, Lcom/helpshift/do;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/helpshift/do;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    iget-object v0, p0, Lcom/helpshift/do;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 384
    iput-boolean v4, p0, Lcom/helpshift/do;->q:Z

    .line 385
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/helpshift/do;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/helpshift/do;->k:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 379
    iget-object v0, p0, Lcom/helpshift/do;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/helpshift/do;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    const-string/jumbo v1, "sectionPublishId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/do;->i:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/helpshift/do;->i:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 77
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/helpshift/do;->i:Ljava/lang/String;

    .line 79
    :cond_0
    sget-object v1, Lcom/helpshift/c;->b:Lcom/helpshift/c;

    invoke-static {v1}, Lcom/helpshift/a;->a(Lcom/helpshift/c;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/helpshift/do;->r:Z

    .line 80
    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 81
    sput-boolean v2, Lcom/helpshift/ah;->a:Z

    .line 82
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/do;->p:Ljava/lang/Boolean;

    .line 85
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/helpshift/do;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget v0, Lcom/helpshift/g;->m:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/do;->l:Landroid/view/MenuItem;

    .line 215
    iget-object v0, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    iget-object v1, p0, Lcom/helpshift/do;->l:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p0, Lcom/helpshift/do;->v:Lcom/helpshift/app/a;

    iget-object v1, p0, Lcom/helpshift/do;->l:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/helpshift/do;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/k;->h:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/app/a;->a(Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/helpshift/do;->v:Lcom/helpshift/app/a;

    iget-object v1, p0, Lcom/helpshift/do;->l:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, p0}, Lcom/helpshift/app/a;->a(Landroid/view/MenuItem;Lcom/helpshift/f/g;)V

    .line 219
    iget-object v0, p0, Lcom/helpshift/do;->v:Lcom/helpshift/app/a;

    iget-object v1, p0, Lcom/helpshift/do;->l:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, p0}, Lcom/helpshift/app/a;->a(Landroid/view/MenuItem;Lcom/helpshift/f/e;)V

    .line 221
    iget-object v0, p0, Lcom/helpshift/do;->d:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->q()V

    .line 223
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/helpshift/do;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/helpshift/m;

    iput-object v0, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    .line 91
    iget-object v0, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    invoke-virtual {v0}, Lcom/helpshift/m;->c()Lcom/helpshift/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/do;->v:Lcom/helpshift/app/a;

    .line 92
    new-instance v0, Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    invoke-direct {v0, v1}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/do;->d:Lcom/helpshift/al;

    .line 94
    iget-boolean v0, p0, Lcom/helpshift/do;->r:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    sget v0, Lcom/helpshift/h;->d:I

    invoke-virtual {p1, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/do;->k:Landroid/view/View;

    .line 102
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    sget v2, Lcom/helpshift/h;->f:I

    iget-object v3, p0, Lcom/helpshift/do;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/helpshift/do;->e:Landroid/widget/ArrayAdapter;

    .line 105
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    sget v2, Lcom/helpshift/h;->f:I

    iget-object v3, p0, Lcom/helpshift/do;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/helpshift/do;->f:Landroid/widget/ArrayAdapter;

    .line 108
    iget-object v0, p0, Lcom/helpshift/do;->e:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/helpshift/do;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/do;->u:Ljava/lang/String;

    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    sget v0, Lcom/helpshift/h;->e:I

    invoke-virtual {p1, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/do;->k:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 207
    invoke-static {p0}, Lcom/helpshift/al;->b(Lcom/helpshift/bm;)V

    .line 208
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/helpshift/do;->q:Z

    if-eqz v0, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/helpshift/do;->h()V

    .line 315
    iget-object v0, p0, Lcom/helpshift/do;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/l;

    .line 319
    :goto_0
    invoke-virtual {v0}, Lcom/helpshift/l;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "empty_status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    const-class v3, Lcom/helpshift/HSQuestion;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    const-string/jumbo v2, "questionPublishId"

    invoke-virtual {v0}, Lcom/helpshift/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string/jumbo v0, "decomp"

    iget-object v2, p0, Lcom/helpshift/do;->p:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 323
    const-string/jumbo v0, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    invoke-static {v2}, Lcom/helpshift/e/c;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0}, Lcom/helpshift/do;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 325
    const-string/jumbo v0, "isRoot"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/helpshift/do;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 328
    :cond_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/helpshift/do;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/l;

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 182
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 187
    iget-object v1, p0, Lcom/helpshift/do;->p:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/helpshift/do;->s:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/helpshift/do;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 190
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 191
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/helpshift/do;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string/jumbo v2, "b"

    invoke-static {v2, v1}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/helpshift/do;->t:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_1
    :goto_0
    sget-object v1, Lcom/helpshift/c;->a:Lcom/helpshift/c;

    invoke-static {v1}, Lcom/helpshift/a;->a(Lcom/helpshift/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    iget-boolean v2, p0, Lcom/helpshift/do;->q:Z

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Lcom/helpshift/m;->a(Z)V

    .line 201
    :cond_2
    return-void

    .line 194
    :catch_0
    move-exception v1

    .line 195
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v3, "event data"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 199
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 116
    invoke-virtual {p0}, Lcom/helpshift/do;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/do;->j:Landroid/widget/ListView;

    .line 118
    iget-object v0, p0, Lcom/helpshift/do;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 119
    iget-object v0, p0, Lcom/helpshift/do;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/helpshift/dp;

    invoke-direct {v1, p0}, Lcom/helpshift/dp;-><init>(Lcom/helpshift/do;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    iget-boolean v0, p0, Lcom/helpshift/do;->r:Z

    if-ne v0, v4, :cond_0

    .line 130
    iget-object v0, p0, Lcom/helpshift/do;->k:Landroid/view/View;

    sget v1, Lcom/helpshift/g;->n:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 131
    new-instance v1, Lcom/helpshift/dq;

    invoke-direct {v1, p0}, Lcom/helpshift/dq;-><init>(Lcom/helpshift/do;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_0
    invoke-virtual {p0, v4}, Lcom/helpshift/do;->setHasOptionsMenu(Z)V

    .line 146
    :cond_1
    invoke-static {p0}, Lcom/helpshift/al;->a(Lcom/helpshift/bm;)V

    .line 148
    iget-object v0, p0, Lcom/helpshift/do;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 149
    iget-object v0, p0, Lcom/helpshift/do;->d:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/do;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/do;->w:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/do;->x:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/al;->a(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 154
    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/helpshift/do;->c:Lcom/helpshift/m;

    sget v2, Lcom/helpshift/em;->hs__contentSeparatorColor:I

    invoke-static {v1, v2}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 155
    iget-object v1, p0, Lcom/helpshift/do;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lcom/helpshift/do;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 157
    return-void

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/helpshift/do;->d:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/do;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/do;->w:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/do;->x:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpshift/al;->b(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->setUserVisibleHint(Z)V

    .line 162
    iput-boolean p1, p0, Lcom/helpshift/do;->s:Z

    .line 168
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/helpshift/do;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 171
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/helpshift/do;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string/jumbo v1, "b"

    invoke-static {v1, v0}, Lcom/helpshift/br;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/do;->t:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    const-string/jumbo v1, "HelpShiftDebug"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
