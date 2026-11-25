.class public final Lcom/helpshift/a/a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/helpshift/bu;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/view/LayoutInflater;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/g/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v0, p1

    .line 49
    check-cast v0, Lcom/helpshift/bu;

    iput-object v0, p0, Lcom/helpshift/a/a;->a:Lcom/helpshift/bu;

    .line 50
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/helpshift/a/a;->c:Ljava/util/List;

    .line 52
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/helpshift/a/a;->d:Landroid/view/LayoutInflater;

    .line 53
    return-void
.end method

.method private a(Landroid/view/View;Lcom/helpshift/g/a;ILcom/helpshift/a/l;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 190
    if-nez p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/helpshift/a/a;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/h;->q:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    sget v1, Lcom/helpshift/g;->Z:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->j(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 194
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/a/l;->a:Landroid/widget/TextView;

    .line 195
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p4, Lcom/helpshift/a/l;->b:Landroid/widget/ProgressBar;

    .line 196
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p4, Lcom/helpshift/a/l;->c:Landroid/widget/LinearLayout;

    .line 197
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p4, Lcom/helpshift/a/l;->d:Landroid/widget/ImageButton;

    .line 198
    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p4, Lcom/helpshift/a/l;->e:Landroid/widget/ImageButton;

    .line 199
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    iget-object v1, p4, Lcom/helpshift/a/l;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->f(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    iget-object v1, p4, Lcom/helpshift/a/l;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->g(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 206
    :goto_0
    iget-object v0, p4, Lcom/helpshift/a/l;->a:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/g/a;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p2, Lcom/helpshift/g/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p4, Lcom/helpshift/a/l;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 210
    iget-object v0, p4, Lcom/helpshift/a/l;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    :goto_1
    return-object p1

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/a/l;

    move-object p4, v0

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p2, Lcom/helpshift/g/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    iget-object v0, p4, Lcom/helpshift/a/l;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    iget-object v0, p4, Lcom/helpshift/a/l;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 215
    iget-object v0, p4, Lcom/helpshift/a/l;->d:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/a/c;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/a/c;-><init>(Lcom/helpshift/a/a;Lcom/helpshift/g/a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p4, Lcom/helpshift/a/l;->e:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/a/d;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/a/d;-><init>(Lcom/helpshift/a/a;Lcom/helpshift/g/a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p4, Lcom/helpshift/a/l;->d:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/helpshift/a/a;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 234
    iget-object v0, p4, Lcom/helpshift/a/l;->e:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/helpshift/a/a;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 237
    :cond_2
    iget-object v0, p4, Lcom/helpshift/a/l;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 238
    iget-object v0, p4, Lcom/helpshift/a/l;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;Lcom/helpshift/g/a;ILcom/helpshift/a/n;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 375
    if-nez p1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/helpshift/a/a;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/h;->t:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 377
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    sget v1, Lcom/helpshift/g;->aa:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->k(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 379
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p4, Lcom/helpshift/a/n;->a:Landroid/widget/LinearLayout;

    .line 380
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p4, Lcom/helpshift/a/n;->b:Landroid/widget/ProgressBar;

    .line 381
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p4, Lcom/helpshift/a/n;->c:Landroid/widget/ImageView;

    .line 382
    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p4, Lcom/helpshift/a/n;->d:Landroid/widget/ImageButton;

    .line 383
    const v0, 0x102001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p4, Lcom/helpshift/a/n;->e:Landroid/widget/ImageButton;

    .line 384
    const v0, 0x102002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p4, Lcom/helpshift/a/n;->f:Landroid/view/View;

    .line 386
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    iget-object v1, p4, Lcom/helpshift/a/n;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->f(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    iget-object v1, p4, Lcom/helpshift/a/n;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->g(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 389
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 394
    :goto_0
    iget-object v0, p2, Lcom/helpshift/g/a;->h:Ljava/lang/String;

    const/16 v1, 0xfa

    invoke-static {v0, v1}, Lcom/helpshift/e/b;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 395
    iget-object v1, p4, Lcom/helpshift/a/n;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 397
    iget-object v0, p2, Lcom/helpshift/g/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p4, Lcom/helpshift/a/n;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    iget-object v0, p4, Lcom/helpshift/a/n;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 400
    iget-object v0, p4, Lcom/helpshift/a/n;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p4, Lcom/helpshift/a/n;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 402
    iget-object v0, p4, Lcom/helpshift/a/n;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 429
    :cond_0
    :goto_1
    iget-object v0, p4, Lcom/helpshift/a/n;->d:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/helpshift/a/a;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 430
    iget-object v0, p4, Lcom/helpshift/a/n;->e:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/helpshift/a/a;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 432
    return-object p1

    .line 391
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/a/n;

    move-object p4, v0

    goto :goto_0

    .line 403
    :cond_2
    iget-object v0, p2, Lcom/helpshift/g/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 404
    iget-object v0, p4, Lcom/helpshift/a/n;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    iget-object v0, p4, Lcom/helpshift/a/n;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 406
    iget-object v0, p4, Lcom/helpshift/a/n;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v0, p4, Lcom/helpshift/a/n;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 408
    iget-object v0, p4, Lcom/helpshift/a/n;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 409
    iget-object v0, p4, Lcom/helpshift/a/n;->d:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/a/h;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/a/h;-><init>(Lcom/helpshift/a/a;Lcom/helpshift/g/a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p4, Lcom/helpshift/a/n;->e:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/a/i;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/a/i;-><init>(Lcom/helpshift/a/a;Lcom/helpshift/g/a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 425
    :cond_3
    iget-object v0, p2, Lcom/helpshift/g/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p4, Lcom/helpshift/a/n;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;Lcom/helpshift/g/a;ILcom/helpshift/a/o;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 467
    if-nez p1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/helpshift/a/a;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/h;->v:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 469
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    sget v1, Lcom/helpshift/g;->Z:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->j(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 471
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/a/o;->a:Landroid/widget/TextView;

    .line 472
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p4, Lcom/helpshift/a/o;->b:Landroid/widget/ProgressBar;

    .line 473
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p4, Lcom/helpshift/a/o;->c:Landroid/widget/ImageButton;

    .line 474
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    iget-object v1, p4, Lcom/helpshift/a/o;->c:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->i(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 475
    const v0, 0x102002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p4, Lcom/helpshift/a/o;->d:Landroid/view/View;

    .line 476
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 481
    :goto_0
    iget-object v0, p4, Lcom/helpshift/a/o;->a:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/k;->u:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 483
    iget-object v0, p2, Lcom/helpshift/g/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p4, Lcom/helpshift/a/o;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 485
    iget-object v0, p4, Lcom/helpshift/a/o;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 486
    iget-object v0, p4, Lcom/helpshift/a/o;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 505
    :goto_1
    return-object p1

    .line 478
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/a/o;

    move-object p4, v0

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p2, Lcom/helpshift/g/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 488
    iget-object v0, p4, Lcom/helpshift/a/o;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 489
    iget-object v0, p4, Lcom/helpshift/a/o;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 490
    iget-object v0, p4, Lcom/helpshift/a/o;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v0, p4, Lcom/helpshift/a/o;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/a/j;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/a/j;-><init>(Lcom/helpshift/a/a;Lcom/helpshift/g/a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 500
    :cond_2
    iget-object v0, p4, Lcom/helpshift/a/o;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 501
    iget-object v0, p4, Lcom/helpshift/a/o;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 502
    iget-object v0, p4, Lcom/helpshift/a/o;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;Lcom/helpshift/g/a;ILcom/helpshift/a/p;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0xfa

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 269
    if-nez p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/helpshift/a/a;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/h;->s:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 271
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    sget v1, Lcom/helpshift/g;->Z:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->j(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    sget v1, Lcom/helpshift/g;->aa:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->k(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 274
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/a/p;->a:Landroid/widget/TextView;

    .line 275
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p4, Lcom/helpshift/a/p;->b:Landroid/widget/ImageButton;

    .line 276
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    iget-object v1, p4, Lcom/helpshift/a/p;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->h(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 277
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p4, Lcom/helpshift/a/p;->c:Landroid/widget/ProgressBar;

    .line 278
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p4, Lcom/helpshift/a/p;->d:Landroid/widget/LinearLayout;

    .line 279
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p4, Lcom/helpshift/a/p;->e:Landroid/widget/ImageView;

    .line 280
    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p4, Lcom/helpshift/a/p;->f:Landroid/widget/ImageButton;

    .line 281
    const v0, 0x102001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p4, Lcom/helpshift/a/p;->g:Landroid/widget/ImageButton;

    .line 282
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    iget-object v1, p4, Lcom/helpshift/a/p;->g:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->f(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    iget-object v1, p4, Lcom/helpshift/a/p;->f:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->g(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 284
    const v0, 0x102002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p4, Lcom/helpshift/a/p;->h:Landroid/view/View;

    .line 285
    sget v0, Lcom/helpshift/g;->Z:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p4, Lcom/helpshift/a/p;->i:Landroid/widget/LinearLayout;

    .line 286
    sget v0, Lcom/helpshift/g;->ab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p4, Lcom/helpshift/a/p;->j:Landroid/view/View;

    .line 287
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 292
    :goto_0
    iget-object v0, p4, Lcom/helpshift/a/p;->a:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/g/a;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p2, Lcom/helpshift/g/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p4, Lcom/helpshift/a/p;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    iget-object v0, p4, Lcom/helpshift/a/p;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 298
    iget-object v0, p4, Lcom/helpshift/a/p;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p4, Lcom/helpshift/a/p;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p2, Lcom/helpshift/g/a;->h:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/helpshift/e/b;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    iget-object v1, p4, Lcom/helpshift/a/p;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 303
    iget-object v0, p4, Lcom/helpshift/a/p;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 305
    iget-object v0, p4, Lcom/helpshift/a/p;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p4, Lcom/helpshift/a/p;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 307
    iget-object v0, p4, Lcom/helpshift/a/p;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 366
    :goto_1
    iget-object v0, p4, Lcom/helpshift/a/p;->f:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/helpshift/a/a;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 367
    iget-object v0, p4, Lcom/helpshift/a/p;->g:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/helpshift/a/a;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 368
    iget-object v0, p4, Lcom/helpshift/a/p;->b:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/helpshift/a/a;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 370
    return-object p1

    .line 289
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/a/p;

    move-object p4, v0

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p2, Lcom/helpshift/g/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/helpshift/g/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    iget-object v0, p4, Lcom/helpshift/a/p;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p4, Lcom/helpshift/a/p;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 312
    iget-object v0, p4, Lcom/helpshift/a/p;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v0, p4, Lcom/helpshift/a/p;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p2, Lcom/helpshift/g/a;->h:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/helpshift/e/b;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 316
    iget-object v1, p4, Lcom/helpshift/a/p;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    iget-object v0, p4, Lcom/helpshift/a/p;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 319
    iget-object v0, p4, Lcom/helpshift/a/p;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p4, Lcom/helpshift/a/p;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 321
    iget-object v0, p4, Lcom/helpshift/a/p;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 322
    iget-object v0, p4, Lcom/helpshift/a/p;->f:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/a/e;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/a/e;-><init>(Lcom/helpshift/a/a;Lcom/helpshift/g/a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p4, Lcom/helpshift/a/p;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/a/f;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/a/f;-><init>(Lcom/helpshift/a/a;Lcom/helpshift/g/a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 338
    :cond_2
    iget-object v0, p2, Lcom/helpshift/g/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 340
    iget-object v0, p4, Lcom/helpshift/a/p;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    iget-object v0, p4, Lcom/helpshift/a/p;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 342
    iget-object v0, p4, Lcom/helpshift/a/p;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p4, Lcom/helpshift/a/p;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/a/g;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/a/g;-><init>(Lcom/helpshift/a/a;Lcom/helpshift/g/a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p4, Lcom/helpshift/a/p;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    iget-object v0, p4, Lcom/helpshift/a/p;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    iget-object v0, p4, Lcom/helpshift/a/p;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 357
    :cond_3
    iget-object v0, p4, Lcom/helpshift/a/p;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    iget-object v0, p4, Lcom/helpshift/a/p;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 359
    iget-object v0, p4, Lcom/helpshift/a/p;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p4, Lcom/helpshift/a/p;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    iget-object v0, p4, Lcom/helpshift/a/p;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 363
    iget-object v0, p4, Lcom/helpshift/a/p;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private a(Landroid/view/View;Lcom/helpshift/g/a;Lcom/helpshift/a/k;)Landroid/view/View;
    .locals 3

    .prologue
    .line 510
    if-nez p1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/helpshift/a/a;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/h;->w:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 513
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/a/k;->a:Landroid/widget/TextView;

    .line 514
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 519
    :goto_0
    iget-object v0, p3, Lcom/helpshift/a/k;->a:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/k;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 521
    return-object p1

    .line 516
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/a/k;

    move-object p3, v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/helpshift/g/a;Lcom/helpshift/a/q;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 437
    if-nez p1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/helpshift/a/a;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/h;->u:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 439
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    sget v1, Lcom/helpshift/g;->aa:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->k(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 441
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/a/q;->a:Landroid/widget/TextView;

    .line 442
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p3, Lcom/helpshift/a/q;->b:Landroid/widget/ProgressBar;

    .line 443
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/helpshift/a/q;->c:Landroid/widget/ImageView;

    .line 444
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 449
    :goto_0
    iget-object v0, p3, Lcom/helpshift/a/q;->a:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/k;->v:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 451
    iget-object v0, p2, Lcom/helpshift/g/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p3, Lcom/helpshift/a/q;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 453
    iget-object v0, p3, Lcom/helpshift/a/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v0, p3, Lcom/helpshift/a/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 462
    :goto_1
    return-object p1

    .line 446
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/a/q;

    move-object p3, v0

    goto :goto_0

    .line 456
    :cond_1
    iget-object v0, p3, Lcom/helpshift/a/q;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 457
    iget-object v0, p3, Lcom/helpshift/a/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 458
    iget-object v0, p2, Lcom/helpshift/g/a;->h:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/helpshift/e/b;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 459
    iget-object v1, p3, Lcom/helpshift/a/q;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;Lcom/helpshift/g/a;Lcom/helpshift/a/r;)Landroid/view/View;
    .locals 3

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/helpshift/a/a;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/h;->o:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    sget v1, Lcom/helpshift/g;->Z:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->j(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 138
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/a/r;->a:Landroid/widget/TextView;

    .line 139
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/a/r;->b:Landroid/widget/TextView;

    .line 140
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    :goto_0
    iget-object v0, p3, Lcom/helpshift/a/r;->a:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/g/a;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p3, Lcom/helpshift/a/r;->b:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/g/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-object p1

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/a/r;

    move-object p3, v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/helpshift/g/a;Lcom/helpshift/a/s;)Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 153
    if-nez p1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/helpshift/a/a;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/h;->p:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    sget v1, Lcom/helpshift/g;->aa:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->k(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 157
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/a/s;->a:Landroid/widget/TextView;

    .line 158
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/a/s;->b:Landroid/widget/TextView;

    .line 159
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/helpshift/a/s;->c:Landroid/widget/ImageView;

    .line 160
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    :goto_0
    iget-object v0, p2, Lcom/helpshift/g/a;->b:Ljava/lang/String;

    const-string/jumbo v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p2, Lcom/helpshift/g/a;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/helpshift/g/a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 166
    :cond_0
    iget-object v0, p3, Lcom/helpshift/a/s;->a:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/g/a;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p3, Lcom/helpshift/a/s;->b:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/k;->w:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iget-object v0, p3, Lcom/helpshift/a/s;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    :goto_1
    return-object p1

    .line 162
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/a/s;

    move-object p3, v0

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p2, Lcom/helpshift/g/a;->b:Ljava/lang/String;

    const-string/jumbo v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/helpshift/g/a;->f:I

    const/4 v1, -0x2

    if-gt v0, v1, :cond_3

    .line 170
    iget-object v0, p3, Lcom/helpshift/a/s;->a:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/g/a;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p3, Lcom/helpshift/a/s;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/helpshift/a/b;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/a/b;-><init>(Lcom/helpshift/a/a;Lcom/helpshift/g/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p3, Lcom/helpshift/a/s;->b:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/k;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p3, Lcom/helpshift/a/s;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 180
    :cond_3
    iget-object v0, p3, Lcom/helpshift/a/s;->a:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/g/a;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p3, Lcom/helpshift/a/s;->b:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/g/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p3, Lcom/helpshift/a/s;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;Lcom/helpshift/g/a;ZLcom/helpshift/a/m;)Landroid/view/View;
    .locals 3

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/helpshift/a/a;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/h;->r:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 248
    iget-object v0, p0, Lcom/helpshift/a/a;->b:Landroid/content/Context;

    sget v1, Lcom/helpshift/g;->Z:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->j(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 250
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/a/m;->a:Landroid/widget/TextView;

    .line 251
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/a/m;->b:Landroid/widget/TextView;

    .line 252
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 257
    :goto_0
    if-eqz p3, :cond_1

    .line 258
    iget-object v0, p4, Lcom/helpshift/a/m;->a:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/k;->s:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    :goto_1
    iget-object v0, p4, Lcom/helpshift/a/m;->b:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/g/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    return-object p1

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/a/m;

    move-object p4, v0

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p4, Lcom/helpshift/a/m;->a:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/k;->t:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/helpshift/a/a;)Lcom/helpshift/bu;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/helpshift/a/a;->a:Lcom/helpshift/bu;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 589
    const-string/jumbo v0, "\n"

    const-string/jumbo v1, "<br/>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/helpshift/a/a;->e:Z

    .line 57
    return-void
.end method

.method public getItemViewType(I)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 71
    iget-object v0, p0, Lcom/helpshift/a/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/g/a;

    .line 72
    iget-object v2, v0, Lcom/helpshift/g/a;->b:Ljava/lang/String;

    const-string/jumbo v3, "txt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/helpshift/g/a;->f:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, v0, Lcom/helpshift/g/a;->f:I

    if-eq v2, v1, :cond_2

    :cond_0
    iget-object v2, v0, Lcom/helpshift/g/a;->b:Ljava/lang/String;

    const-string/jumbo v3, "txt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/helpshift/g/a;->f:I

    const/4 v3, -0x2

    if-le v2, v3, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/helpshift/g/a;->b:Ljava/lang/String;

    const-string/jumbo v3, "txt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/helpshift/g/a;->c:Ljava/lang/String;

    const-string/jumbo v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    :cond_2
    const/4 v0, 0x2

    .line 97
    :goto_0
    return v0

    .line 76
    :cond_3
    iget-object v2, v0, Lcom/helpshift/g/a;->b:Ljava/lang/String;

    const-string/jumbo v3, "txt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/helpshift/g/a;->c:Ljava/lang/String;

    const-string/jumbo v3, "admin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    iget-object v1, v0, Lcom/helpshift/g/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "cb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/helpshift/g/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "admin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    const/4 v0, 0x5

    goto :goto_0

    .line 80
    :cond_5
    iget-object v1, v0, Lcom/helpshift/g/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "rsc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/helpshift/g/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "admin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 81
    iget-object v0, v0, Lcom/helpshift/g/a;->g:Ljava/lang/String;

    const-string/jumbo v1, "localRscMessage_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    const/16 v0, 0xe

    goto :goto_0

    .line 84
    :cond_6
    const/16 v0, 0xd

    goto :goto_0

    .line 86
    :cond_7
    iget-object v1, v0, Lcom/helpshift/g/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "ca"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/helpshift/g/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 87
    const/4 v0, 0x6

    goto :goto_0

    .line 88
    :cond_8
    iget-object v1, v0, Lcom/helpshift/g/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "ncr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/helpshift/g/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 89
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 90
    :cond_9
    iget-object v1, v0, Lcom/helpshift/g/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "sc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/helpshift/g/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 91
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 92
    :cond_a
    iget-object v1, v0, Lcom/helpshift/g/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/helpshift/g/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "admin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 93
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 94
    :cond_b
    iget-object v1, v0, Lcom/helpshift/g/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, v0, Lcom/helpshift/g/a;->c:Ljava/lang/String;

    const-string/jumbo v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 95
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 97
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/helpshift/a/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/g/a;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lcom/helpshift/a/a;->getItemViewType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v0, v1

    .line 129
    :goto_0
    return-object v0

    .line 107
    :pswitch_1
    new-instance v2, Lcom/helpshift/a/r;

    invoke-direct {v2, v1}, Lcom/helpshift/a/r;-><init>(Lcom/helpshift/a/b;)V

    invoke-direct {p0, p2, v0, v2}, Lcom/helpshift/a/a;->a(Landroid/view/View;Lcom/helpshift/g/a;Lcom/helpshift/a/r;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_2
    new-instance v2, Lcom/helpshift/a/s;

    invoke-direct {v2, v1}, Lcom/helpshift/a/s;-><init>(Lcom/helpshift/a/b;)V

    invoke-direct {p0, p2, v0, v2}, Lcom/helpshift/a/a;->a(Landroid/view/View;Lcom/helpshift/g/a;Lcom/helpshift/a/s;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_3
    new-instance v2, Lcom/helpshift/a/l;

    invoke-direct {v2, v1}, Lcom/helpshift/a/l;-><init>(Lcom/helpshift/a/b;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/a/a;->a(Landroid/view/View;Lcom/helpshift/g/a;ILcom/helpshift/a/l;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_4
    const/4 v2, 0x1

    new-instance v3, Lcom/helpshift/a/m;

    invoke-direct {v3, v1}, Lcom/helpshift/a/m;-><init>(Lcom/helpshift/a/b;)V

    invoke-direct {p0, p2, v0, v2, v3}, Lcom/helpshift/a/a;->a(Landroid/view/View;Lcom/helpshift/g/a;ZLcom/helpshift/a/m;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_5
    const/4 v2, 0x0

    new-instance v3, Lcom/helpshift/a/m;

    invoke-direct {v3, v1}, Lcom/helpshift/a/m;-><init>(Lcom/helpshift/a/b;)V

    invoke-direct {p0, p2, v0, v2, v3}, Lcom/helpshift/a/a;->a(Landroid/view/View;Lcom/helpshift/g/a;ZLcom/helpshift/a/m;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 117
    :pswitch_6
    new-instance v2, Lcom/helpshift/a/p;

    invoke-direct {v2, v1}, Lcom/helpshift/a/p;-><init>(Lcom/helpshift/a/b;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/a/a;->a(Landroid/view/View;Lcom/helpshift/g/a;ILcom/helpshift/a/p;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 119
    :pswitch_7
    new-instance v2, Lcom/helpshift/a/n;

    invoke-direct {v2, v1}, Lcom/helpshift/a/n;-><init>(Lcom/helpshift/a/b;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/a/a;->a(Landroid/view/View;Lcom/helpshift/g/a;ILcom/helpshift/a/n;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 121
    :pswitch_8
    new-instance v2, Lcom/helpshift/a/q;

    invoke-direct {v2, v1}, Lcom/helpshift/a/q;-><init>(Lcom/helpshift/a/b;)V

    invoke-direct {p0, p2, v0, v2}, Lcom/helpshift/a/a;->a(Landroid/view/View;Lcom/helpshift/g/a;Lcom/helpshift/a/q;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_9
    new-instance v2, Lcom/helpshift/a/o;

    invoke-direct {v2, v1}, Lcom/helpshift/a/o;-><init>(Lcom/helpshift/a/b;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/a/a;->a(Landroid/view/View;Lcom/helpshift/g/a;ILcom/helpshift/a/o;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 125
    :pswitch_a
    new-instance v2, Lcom/helpshift/a/k;

    invoke-direct {v2, v1}, Lcom/helpshift/a/k;-><init>(Lcom/helpshift/a/b;)V

    invoke-direct {p0, p2, v0, v2}, Lcom/helpshift/a/a;->a(Landroid/view/View;Lcom/helpshift/g/a;Lcom/helpshift/a/k;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x14

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method
