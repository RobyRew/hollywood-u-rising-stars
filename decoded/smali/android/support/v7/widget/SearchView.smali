.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/df;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/d;


# static fields
.field static final g:Landroid/support/v7/widget/gb;


# instance fields
.field private A:I

.field private B:Landroid/os/Bundle;

.field private C:Ljava/lang/Runnable;

.field private final D:Ljava/lang/Runnable;

.field private E:Ljava/lang/Runnable;

.field final a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field final b:Landroid/widget/ImageView;

.field final c:Landroid/widget/ImageView;

.field final d:Landroid/widget/ImageView;

.field final e:Landroid/widget/ImageView;

.field f:Landroid/app/SearchableInfo;

.field private final h:Landroid/view/View;

.field private final i:Landroid/view/View;

.field private j:Landroid/support/v7/widget/gf;

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/graphics/Rect;

.field private m:[I

.field private n:[I

.field private final o:Landroid/widget/ImageView;

.field private p:Landroid/support/v7/widget/gd;

.field private q:Landroid/support/v7/widget/gc;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Ljava/lang/CharSequence;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Landroid/support/v7/widget/gb;

    invoke-direct {v0}, Landroid/support/v7/widget/gb;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->g:Landroid/support/v7/widget/gb;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1584
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1585
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1589
    if-eqz p2, :cond_0

    .line 1590
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1592
    :cond_0
    const-string/jumbo v1, "user_query"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->y:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1593
    if-eqz p4, :cond_1

    .line 1594
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    :cond_1
    if-eqz p3, :cond_2

    .line 1597
    const-string/jumbo v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1600
    const-string/jumbo v1, "app_data"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->B:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1602
    :cond_3
    if-eqz p5, :cond_4

    .line 1603
    const-string/jumbo v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1604
    const-string/jumbo v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1607
    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 888
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 889
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->n:[I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->getLocationInWindow([I)V

    .line 890
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->m:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->n:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 891
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->m:[I

    aget v1, v1, v3

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->n:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 893
    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1749
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Z)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 906
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->t:Z

    .line 908
    if-eqz p1, :cond_1

    move v0, v1

    .line 910
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 912
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 913
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->e(Z)V

    .line 914
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->s:Z

    if-eqz v0, :cond_4

    .line 922
    :cond_0
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 924
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->r()V

    .line 925
    if-nez v3, :cond_5

    :goto_4
    invoke-direct {p0, v4}, Landroid/support/v7/widget/SearchView;->f(Z)V

    .line 926
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->q()V

    .line 927
    return-void

    :cond_1
    move v0, v2

    .line 908
    goto :goto_0

    :cond_2
    move v3, v1

    .line 910
    goto :goto_1

    :cond_3
    move v0, v1

    .line 914
    goto :goto_2

    :cond_4
    move v2, v1

    .line 920
    goto :goto_3

    :cond_5
    move v4, v1

    .line 925
    goto :goto_4
.end method

.method private e(Z)V
    .locals 2

    .prologue
    .line 951
    const/16 v0, 0x8

    .line 952
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->u:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->x:Z

    if-nez v1, :cond_1

    .line 954
    :cond_0
    const/4 v0, 0x0

    .line 956
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 957
    return-void
.end method

.method private f(Z)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 1204
    .line 1205
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1206
    const/4 v0, 0x0

    .line 1207
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1209
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1210
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private i()I
    .locals 2

    .prologue
    .line 896
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/a/e;->abc_search_view_preferred_width:I

    .line 897
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private j()I
    .locals 2

    .prologue
    .line 901
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/a/e;->abc_search_view_preferred_height:I

    .line 902
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->x:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 960
    const/16 v0, 0x8

    .line 961
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/widget/ImageView;

    .line 962
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->e:Landroid/widget/ImageView;

    .line 963
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 964
    :cond_0
    const/4 v0, 0x0

    .line 966
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 967
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 970
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 973
    :goto_0
    if-nez v2, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->s:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->z:Z

    if-nez v3, :cond_3

    .line 974
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 976
    if-eqz v1, :cond_1

    .line 977
    if-eqz v2, :cond_5

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 979
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 970
    goto :goto_0

    :cond_3
    move v0, v1

    .line 973
    goto :goto_1

    .line 974
    :cond_4
    const/16 v1, 0x8

    goto :goto_2

    .line 977
    :cond_5
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private s()V
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 983
    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1254
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1342
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->z:Z

    if-eqz v0, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1344
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->z:Z

    .line 1345
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->A:I

    .line 1346
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->A:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1347
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    goto :goto_0
.end method

.method a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1563
    const-string/jumbo v1, "android.intent.action.SEARCH"

    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1564
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1565
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1566
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 609
    if-eqz p1, :cond_0

    .line 610
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 611
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->y:Ljava/lang/CharSequence;

    .line 615
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()V

    .line 618
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 706
    if-eqz p1, :cond_0

    .line 707
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->e()V

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->f()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1330
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;Z)V

    .line 1331
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1332
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->d(Z)V

    .line 1333
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->A:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1334
    iput-boolean v2, p0, Landroid/support/v7/widget/SearchView;->z:Z

    .line 1335
    return-void
.end method

.method b(Z)V
    .locals 3

    .prologue
    .line 1007
    if-eqz p1, :cond_1

    .line 1008
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->C:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->C:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1012
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1014
    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->t:Z

    return v0
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->v:Z

    .line 535
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 536
    invoke-super {p0}, Landroid/support/v7/widget/df;->clearFocus()V

    .line 537
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 538
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->v:Z

    .line 539
    return-void
.end method

.method d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1239
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1240
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1241
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/gd;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/gd;

    .line 1242
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/gd;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1243
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1244
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v0}, Landroid/support/v7/widget/SearchView;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1246
    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 1247
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->t()V

    .line 1250
    :cond_2
    return-void
.end method

.method e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1257
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1259
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->s:Z

    if-eqz v0, :cond_1

    .line 1261
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/gc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/gc;

    invoke-interface {v0}, Landroid/support/v7/widget/gc;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1263
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1265
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->d(Z)V

    .line 1274
    :cond_1
    :goto_0
    return-void

    .line 1269
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1271
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SearchView;->b(Z)V

    goto :goto_0
.end method

.method f()V
    .locals 1

    .prologue
    .line 1277
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->d(Z)V

    .line 1278
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 1280
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1283
    :cond_0
    return-void
.end method

.method g()V
    .locals 1

    .prologue
    .line 1309
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->d(Z)V

    .line 1312
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->s()V

    .line 1313
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->h()V

    .line 1316
    :cond_0
    return-void
.end method

.method h()V
    .locals 2

    .prologue
    .line 1744
    sget-object v0, Landroid/support/v7/widget/SearchView;->g:Landroid/support/v7/widget/gb;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/gb;->a(Landroid/widget/AutoCompleteTextView;)V

    .line 1745
    sget-object v0, Landroid/support/v7/widget/SearchView;->g:Landroid/support/v7/widget/gb;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/gb;->b(Landroid/widget/AutoCompleteTextView;)V

    .line 1746
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1002
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1003
    invoke-super {p0}, Landroid/support/v7/widget/df;->onDetachedFromWindow()V

    .line 1004
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 869
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/df;->onLayout(ZIIII)V

    .line 871
    if-eqz p1, :cond_0

    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SearchView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 875
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, p5, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 877
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/support/v7/widget/gf;

    if-nez v0, :cond_1

    .line 878
    new-instance v0, Landroid/support/v7/widget/gf;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/gf;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/support/v7/widget/gf;

    .line 880
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/support/v7/widget/gf;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/support/v7/widget/gf;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/gf;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 820
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/df;->onMeasure(II)V

    .line 865
    :goto_0
    return-void

    .line 825
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 826
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 828
    sparse-switch v1, :sswitch_data_0

    .line 850
    :cond_1
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 851
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 853
    sparse-switch v2, :sswitch_data_1

    .line 863
    :goto_2
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 864
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 863
    invoke-super {p0, v0, v1}, Landroid/support/v7/widget/df;->onMeasure(II)V

    goto :goto_0

    .line 831
    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/SearchView;->w:I

    if-lez v1, :cond_2

    .line 832
    iget v1, p0, Landroid/support/v7/widget/SearchView;->w:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 834
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->i()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 839
    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/SearchView;->w:I

    if-lez v1, :cond_1

    .line 840
    iget v1, p0, Landroid/support/v7/widget/SearchView;->w:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 845
    :sswitch_2
    iget v0, p0, Landroid/support/v7/widget/SearchView;->w:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/SearchView;->w:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->i()I

    move-result v0

    goto :goto_1

    .line 855
    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->j()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 858
    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->j()I

    move-result v1

    goto :goto_2

    .line 828
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 853
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1400
    instance-of v0, p1, Landroid/support/v7/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    .line 1401
    invoke-super {p0, p1}, Landroid/support/v7/widget/df;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1408
    :goto_0
    return-void

    .line 1404
    :cond_0
    check-cast p1, Landroid/support/v7/widget/SearchView$SavedState;

    .line 1405
    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/df;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1406
    iget-boolean v0, p1, Landroid/support/v7/widget/SearchView$SavedState;->a:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->d(Z)V

    .line 1407
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1392
    invoke-super {p0}, Landroid/support/v7/widget/df;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1393
    new-instance v1, Landroid/support/v7/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1394
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v0

    iput-boolean v0, v1, Landroid/support/v7/widget/SearchView$SavedState;->a:Z

    .line 1395
    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1320
    invoke-super {p0, p1}, Landroid/support/v7/widget/df;->onWindowFocusChanged(Z)V

    .line 1322
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->s()V

    .line 1323
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 517
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->v:Z

    if-eqz v1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 519
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 522
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 523
    if-eqz v1, :cond_2

    .line 524
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->d(Z)V

    :cond_2
    move v0, v1

    .line 526
    goto :goto_0

    .line 528
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/df;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method
