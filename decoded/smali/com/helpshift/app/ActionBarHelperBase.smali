.class public Lcom/helpshift/app/ActionBarHelperBase;
.super Lcom/helpshift/app/a;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected b:Z

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/helpshift/f/g;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/helpshift/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/view/LayoutInflater;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/helpshift/app/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/app/ActionBarHelperBase;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/helpshift/app/a;-><init>(Landroid/app/Activity;)V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->d:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->e:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->f:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->g:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->h:Ljava/util/Map;

    .line 59
    iput-boolean v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->j:Z

    .line 60
    iput-boolean v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->k:Z

    .line 61
    iput-boolean v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->b:Z

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->e:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 213
    sget v0, Lcom/helpshift/f;->a:I

    .line 214
    sget v1, Lcom/helpshift/f;->b:I

    .line 216
    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    const/4 v4, 0x0

    sget v5, Lcom/helpshift/e;->b:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 218
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 219
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 220
    div-int/lit8 v3, v0, 0x2

    .line 222
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    sub-int v5, v0, v3

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v5, v1, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 229
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-boolean v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->k:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    :goto_0
    sget v0, Lcom/helpshift/g;->I:I

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setId(I)V

    .line 236
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 237
    return-void

    .line 233
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/MenuItem;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 160
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->i:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/h;->l:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpshift/app/ActionBarHelperBase$HomeView;

    .line 163
    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v1, Lcom/helpshift/app/b;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/app/b;-><init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {v0, v3}, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->setClickable(Z)V

    .line 178
    invoke-virtual {v0, v3}, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->setFocusable(Z)V

    .line 179
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/ActionBarHelperBase$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/helpshift/app/ActionBarHelperBase;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->i:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private b(Landroid/view/ViewGroup;Landroid/view/MenuItem;)V
    .locals 5

    .prologue
    .line 184
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/helpshift/f;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 186
    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    sget v4, Lcom/helpshift/e;->a:I

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 191
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    new-instance v0, Lcom/helpshift/app/c;

    invoke-direct {v0, p0, p2}, Lcom/helpshift/app/c;-><init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/view/MenuItem;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 200
    check-cast p2, Lcom/helpshift/app/l;

    new-instance v0, Lcom/helpshift/app/d;

    invoke-direct {v0, p0, v1}, Lcom/helpshift/app/d;-><init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/widget/ImageButton;)V

    invoke-virtual {p2, v0}, Lcom/helpshift/app/l;->a(Lcom/helpshift/f/f;)Landroid/view/MenuItem;

    .line 210
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/helpshift/app/ActionBarHelperBase;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/helpshift/app/ActionBarHelperBase;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->d:Ljava/util/Set;

    return-object v0
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->a()Landroid/view/ViewGroup;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 111
    new-instance v2, Lcom/helpshift/app/k;

    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/helpshift/app/k;-><init>(Landroid/content/Context;)V

    .line 112
    new-instance v3, Lcom/helpshift/app/l;

    const v4, 0x102002c

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v2, v4, v8, v5}, Lcom/helpshift/app/l;-><init>(Lcom/helpshift/app/k;IILjava/lang/CharSequence;)V

    .line 114
    iget-object v4, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/helpshift/e/al;->a(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/helpshift/app/l;->setIcon(I)Landroid/view/MenuItem;

    .line 115
    invoke-direct {p0, v3}, Lcom/helpshift/app/ActionBarHelperBase;->d(Landroid/view/MenuItem;)V

    .line 118
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 121
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    const/4 v6, 0x0

    sget v7, Lcom/helpshift/e;->c:I

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v3, 0x1020016

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setId(I)V

    .line 125
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    new-instance v0, Lcom/helpshift/app/l;

    const v3, 0x102000d

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v8, v1}, Lcom/helpshift/app/l;-><init>(Lcom/helpshift/app/k;IILjava/lang/CharSequence;)V

    .line 129
    invoke-direct {p0, v0}, Lcom/helpshift/app/ActionBarHelperBase;->d(Landroid/view/MenuItem;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->j:Z

    goto :goto_0
.end method

.method private d(Landroid/view/MenuItem;)V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->a()Landroid/view/ViewGroup;

    move-result-object v1

    .line 136
    if-nez v1, :cond_0

    .line 157
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 140
    check-cast v0, Lcom/helpshift/app/l;

    invoke-virtual {v0}, Lcom/helpshift/app/l;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 154
    invoke-direct {p0, v1, p1}, Lcom/helpshift/app/ActionBarHelperBase;->b(Landroid/view/ViewGroup;Landroid/view/MenuItem;)V

    goto :goto_0

    .line 148
    :sswitch_0
    invoke-direct {p0, v1, p1}, Lcom/helpshift/app/ActionBarHelperBase;->a(Landroid/view/ViewGroup;Landroid/view/MenuItem;)V

    goto :goto_0

    .line 151
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/helpshift/app/ActionBarHelperBase;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x102000d -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method private e(Landroid/view/MenuItem;)V
    .locals 5

    .prologue
    .line 298
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 299
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 300
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->a()Landroid/view/ViewGroup;

    move-result-object v1

    sget v3, Lcom/helpshift/g;->a:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 302
    iget-object v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->h:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/helpshift/g;->m:I

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->h:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/f/e;

    .line 304
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->a()Landroid/view/ViewGroup;

    move-result-object v1

    sget v4, Lcom/helpshift/g;->m:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/helpshift/widget/SimpleSearchView;

    .line 305
    new-instance v4, Lcom/helpshift/app/e;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/helpshift/app/e;-><init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/view/View;Landroid/view/View;Lcom/helpshift/f/e;)V

    invoke-virtual {v1, v4}, Lcom/helpshift/widget/SimpleSearchView;->a(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V

    .line 327
    :cond_0
    return-void
.end method

.method private f(Landroid/view/MenuItem;)V
    .locals 3

    .prologue
    .line 334
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 336
    iget-object v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/helpshift/g;->m:I

    if-ne v0, v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/f/g;

    .line 338
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->a()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/helpshift/g;->m:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/helpshift/widget/SimpleSearchView;

    .line 339
    new-instance v2, Lcom/helpshift/app/f;

    invoke-direct {v2, p0, v0}, Lcom/helpshift/app/f;-><init>(Lcom/helpshift/app/ActionBarHelperBase;Lcom/helpshift/f/g;)V

    invoke-virtual {v1, v2}, Lcom/helpshift/widget/SimpleSearchView;->a(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V

    .line 351
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuInflater;)Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/helpshift/app/g;

    iget-object v1, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1}, Lcom/helpshift/app/g;-><init>(Lcom/helpshift/app/ActionBarHelperBase;Landroid/content/Context;Landroid/view/MenuInflater;)V

    return-object v0
.end method

.method public a()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    sget v1, Lcom/helpshift/g;->J:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 70
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->i:Landroid/view/LayoutInflater;

    .line 71
    return-void
.end method

.method public a(Landroid/view/MenuItem;)V
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->a()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/helpshift/g;->m:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpshift/widget/SimpleSearchView;

    .line 477
    invoke-virtual {v0}, Lcom/helpshift/widget/SimpleSearchView;->a()V

    .line 478
    return-void
.end method

.method public a(Landroid/view/MenuItem;Lcom/helpshift/f/e;)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->h:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method

.method public a(Landroid/view/MenuItem;Lcom/helpshift/f/g;)V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->g:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    iget-boolean v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->j:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->a()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 258
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public b(Landroid/view/MenuItem;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 482
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 483
    const-string/jumbo v0, ""

    .line 484
    sget v2, Lcom/helpshift/g;->m:I

    if-ne v1, v2, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->a()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/helpshift/g;->m:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpshift/widget/SimpleSearchView;

    .line 486
    invoke-virtual {v0}, Lcom/helpshift/widget/SimpleSearchView;->b()Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_0
    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/helpshift/app/a;->b(Landroid/os/Bundle;)V

    .line 76
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x7

    sget v3, Lcom/helpshift/h;->m:I

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 78
    invoke-direct {p0}, Lcom/helpshift/app/ActionBarHelperBase;->d()V

    .line 80
    new-instance v2, Lcom/helpshift/app/k;

    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/helpshift/app/k;-><init>(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 82
    iget-object v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move v0, v1

    .line 85
    :goto_0
    invoke-virtual {v2}, Lcom/helpshift/app/k;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 86
    invoke-virtual {v2, v0}, Lcom/helpshift/app/k;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 87
    iget-object v4, p0, Lcom/helpshift/app/ActionBarHelperBase;->d:Ljava/util/Set;

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    invoke-direct {p0, v3}, Lcom/helpshift/app/ActionBarHelperBase;->d(Landroid/view/MenuItem;)V

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/helpshift/app/k;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 94
    invoke-virtual {v2, v1}, Lcom/helpshift/app/k;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 95
    iget-object v3, p0, Lcom/helpshift/app/ActionBarHelperBase;->d:Ljava/util/Set;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-direct {p0, v0}, Lcom/helpshift/app/ActionBarHelperBase;->f(Landroid/view/MenuItem;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/helpshift/app/ActionBarHelperBase;->e(Landroid/view/MenuItem;)V

    .line 93
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    :cond_3
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->j:Z

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->a()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/helpshift/g;->I:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 273
    if-eqz p1, :cond_1

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/helpshift/app/ActionBarHelperBase;->k:Z

    .line 280
    return-void

    .line 276
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/helpshift/app/ActionBarHelperBase;->b:Z

    return v0
.end method

.method public c(Landroid/view/MenuItem;)V
    .locals 2

    .prologue
    .line 494
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 495
    sget v1, Lcom/helpshift/g;->m:I

    if-ne v0, v1, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/helpshift/app/ActionBarHelperBase;->a()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/helpshift/g;->m:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpshift/widget/SimpleSearchView;

    .line 497
    invoke-virtual {v0}, Lcom/helpshift/widget/SimpleSearchView;->clearFocus()V

    .line 499
    :cond_0
    return-void
.end method
