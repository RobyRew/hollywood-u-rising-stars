.class public Lcom/helpshift/s;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Landroid/os/Handler;

.field private C:Landroid/os/Handler;

.field private D:Landroid/os/Handler;

.field private E:Landroid/os/Handler;

.field a:Lcom/helpshift/app/a;

.field public b:Landroid/os/Handler;

.field public c:Landroid/os/Handler;

.field private d:Lcom/helpshift/m;

.field private e:Landroid/os/Bundle;

.field private f:Lcom/helpshift/dx;

.field private g:Lcom/helpshift/al;

.field private h:Lcom/helpshift/ai;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;

.field private k:I

.field private l:Landroid/view/MenuItem;

.field private m:Landroid/view/MenuItem;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/Boolean;

.field private t:Landroid/widget/ImageView;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Landroid/widget/ImageButton;

.field private x:Lcom/helpshift/g/a;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/helpshift/s;->k:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/s;->u:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/helpshift/s;->y:Z

    .line 71
    iput-boolean v1, p0, Lcom/helpshift/s;->z:Z

    .line 75
    new-instance v0, Lcom/helpshift/t;

    invoke-direct {v0, p0}, Lcom/helpshift/t;-><init>(Lcom/helpshift/s;)V

    iput-object v0, p0, Lcom/helpshift/s;->B:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/helpshift/x;

    invoke-direct {v0, p0}, Lcom/helpshift/x;-><init>(Lcom/helpshift/s;)V

    iput-object v0, p0, Lcom/helpshift/s;->b:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/helpshift/y;

    invoke-direct {v0, p0}, Lcom/helpshift/y;-><init>(Lcom/helpshift/s;)V

    iput-object v0, p0, Lcom/helpshift/s;->C:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/helpshift/z;

    invoke-direct {v0, p0}, Lcom/helpshift/z;-><init>(Lcom/helpshift/s;)V

    iput-object v0, p0, Lcom/helpshift/s;->D:Landroid/os/Handler;

    .line 199
    new-instance v0, Lcom/helpshift/aa;

    invoke-direct {v0, p0}, Lcom/helpshift/aa;-><init>(Lcom/helpshift/s;)V

    iput-object v0, p0, Lcom/helpshift/s;->E:Landroid/os/Handler;

    .line 222
    new-instance v0, Lcom/helpshift/ab;

    invoke-direct {v0, p0}, Lcom/helpshift/ab;-><init>(Lcom/helpshift/s;)V

    iput-object v0, p0, Lcom/helpshift/s;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/helpshift/s;Lcom/helpshift/g/a;)Lcom/helpshift/g/a;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/helpshift/s;->x:Lcom/helpshift/g/a;

    return-object p1
.end method

.method static synthetic a(Lcom/helpshift/s;)Lcom/helpshift/m;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    return-object v0
.end method

.method static synthetic a(Lcom/helpshift/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/helpshift/s;->v:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    sget v1, Lcom/helpshift/k;->g:I

    invoke-virtual {p0, v1}, Lcom/helpshift/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 89
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 90
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 624
    iget-object v0, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/helpshift/m;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 625
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 626
    return-void
.end method

.method static synthetic a(Lcom/helpshift/s;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/helpshift/s;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/helpshift/s;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/helpshift/s;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 479
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/helpshift/HSConversation;->b(Z)V

    .line 480
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    const-class v2, Lcom/helpshift/ScreenshotPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    const-string/jumbo v1, "SCREENSHOT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string/jumbo v1, "screenshot_text_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    const/16 v1, 0x7fbc

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/s;->startActivityForResult(Landroid/content/Intent;I)V

    .line 484
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 629
    iget-object v0, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    invoke-virtual {v0, p1}, Lcom/helpshift/m;->c(Z)V

    .line 630
    iget-object v0, p0, Lcom/helpshift/s;->l:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 631
    iget-object v3, p0, Lcom/helpshift/s;->l:Landroid/view/MenuItem;

    if-nez p1, :cond_5

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/helpshift/s;->w:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 634
    iget-object v3, p0, Lcom/helpshift/s;->w:Landroid/widget/ImageButton;

    if-nez p1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/helpshift/s;->t:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 637
    iget-object v3, p0, Lcom/helpshift/s;->t:Landroid/widget/ImageView;

    if-nez p1, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/helpshift/s;->m:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    .line 641
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/helpshift/s;->w:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/helpshift/s;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/helpshift/s;->m:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 648
    :cond_4
    :goto_3
    return-void

    :cond_5
    move v0, v2

    .line 631
    goto :goto_0

    :cond_6
    move v0, v2

    .line 634
    goto :goto_1

    :cond_7
    move v0, v2

    .line 637
    goto :goto_2

    .line 644
    :cond_8
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->Y()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 645
    iget-object v0, p0, Lcom/helpshift/s;->m:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/helpshift/s;->g:Lcom/helpshift/al;

    sget-object v1, Lcom/helpshift/dl;->c:Lcom/helpshift/dl;

    invoke-virtual {v0, p1, v1}, Lcom/helpshift/al;->a(Ljava/lang/String;Lcom/helpshift/dl;)Ljava/util/ArrayList;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/helpshift/s;)Lcom/helpshift/dx;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    const-string/jumbo v1, "callFinish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Lcom/helpshift/s;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lcom/helpshift/s;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 98
    invoke-static {}, Lcom/helpshift/e/c;->a()V

    .line 99
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 520
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v0, p1}, Lcom/helpshift/dx;->y(Ljava/lang/String;)V

    .line 523
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/helpshift/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->q:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 102
    sget-object v0, Lcom/helpshift/d/b/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "dia"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 103
    iget-object v1, p0, Lcom/helpshift/s;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    const-class v2, Lcom/helpshift/HSConversation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    const-string/jumbo v1, "newIssue"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "issueId"

    iget-object v2, p0, Lcom/helpshift/s;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "decomp"

    iget-object v2, p0, Lcom/helpshift/s;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "showConvOnReportIssue"

    iget-object v2, p0, Lcom/helpshift/s;->j:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 110
    const-string/jumbo v1, "showInFullScreen"

    iget-object v2, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    invoke-static {v2}, Lcom/helpshift/e/c;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v1, "chatLaunchSource"

    const-string/jumbo v2, "support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v1, "showSearchOnNewConversation"

    invoke-direct {p0}, Lcom/helpshift/s;->h()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0}, Lcom/helpshift/s;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/helpshift/s;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/helpshift/s;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/helpshift/s;->a()V

    .line 119
    invoke-direct {p0}, Lcom/helpshift/s;->b()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 526
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/helpshift/e/b;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_1

    .line 528
    iget-object v1, p0, Lcom/helpshift/s;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 529
    iget-object v0, p0, Lcom/helpshift/s;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/helpshift/s;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 531
    iput-object p1, p0, Lcom/helpshift/s;->u:Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lcom/helpshift/s;->m:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/helpshift/s;->m:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 536
    iget-object v0, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 537
    iget-object v1, p0, Lcom/helpshift/s;->t:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 538
    iget-object v1, p0, Lcom/helpshift/s;->t:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-double v2, v0

    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 539
    iget-object v0, p0, Lcom/helpshift/s;->t:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 541
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/helpshift/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->r:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 213
    iget-object v0, p0, Lcom/helpshift/s;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/helpshift/s;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 215
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/s;->u:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->y(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->Y()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/helpshift/s;->m:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/helpshift/s;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/helpshift/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->u:Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 253
    iget-object v1, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-static {v1}, Lcom/helpshift/e/ai;->a(Lcom/helpshift/dx;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 255
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/helpshift/s;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lcom/helpshift/s;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 257
    const-string/jumbo v1, "email"

    iget-object v2, p0, Lcom/helpshift/s;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    return-object v0
.end method

.method static synthetic g(Lcom/helpshift/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->v:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 409
    iput-boolean v3, p0, Lcom/helpshift/s;->A:Z

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 412
    invoke-static {v3}, Lcom/helpshift/HSConversation;->b(Z)V

    .line 413
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/s;->startActivityForResult(Landroid/content/Intent;I)V

    .line 414
    return-void
.end method

.method static synthetic h(Lcom/helpshift/s;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->D:Landroid/os/Handler;

    return-object v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->ad()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/helpshift/s;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->E:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 451
    const-string/jumbo v1, "enableContactUs"

    sget-object v2, Lcom/helpshift/ee;->b:Lcom/helpshift/ee;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-static {v0}, Lcom/helpshift/a;->a(Ljava/util/HashMap;)V

    .line 454
    iput-boolean v3, p0, Lcom/helpshift/s;->z:Z

    .line 455
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-direct {p0}, Lcom/helpshift/s;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->w(Ljava/lang/String;)V

    .line 457
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    const-class v2, Lcom/helpshift/SearchResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    const-string/jumbo v1, "searchQuery"

    invoke-direct {p0}, Lcom/helpshift/s;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-static {v3}, Lcom/helpshift/HSConversation;->b(Z)V

    .line 460
    const/16 v1, 0x7fbb

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/s;->startActivityForResult(Landroid/content/Intent;I)V

    .line 462
    return-void
.end method

.method static synthetic j(Lcom/helpshift/s;)Lcom/helpshift/g/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->x:Lcom/helpshift/g/a;

    return-object v0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 466
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/helpshift/s;->a(Z)V

    .line 467
    iget-object v0, p0, Lcom/helpshift/s;->g:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/s;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/helpshift/s;->B:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/helpshift/s;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/helpshift/s;->f()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lcom/helpshift/b/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 470
    iget-object v0, p0, Lcom/helpshift/s;->g:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/s;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/helpshift/s;->B:Landroid/os/Handler;

    iget-object v3, p0, Lcom/helpshift/s;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/s;->r:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/s;->g:Lcom/helpshift/al;

    invoke-virtual {v5}, Lcom/helpshift/al;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/helpshift/s;)Lcom/helpshift/ai;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->h:Lcom/helpshift/ai;

    return-object v0
.end method

.method private k()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 544
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    iget-object v2, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-static {v2}, Lcom/helpshift/e/ai;->b(Lcom/helpshift/dx;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 549
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 550
    iget-object v3, p0, Lcom/helpshift/s;->o:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/s;->q:Ljava/lang/String;

    .line 551
    iget-object v3, p0, Lcom/helpshift/s;->p:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/s;->r:Ljava/lang/String;

    .line 557
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 558
    iget-object v0, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/k;->a:I

    invoke-virtual {p0, v1}, Lcom/helpshift/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 559
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 565
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/helpshift/s;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/helpshift/s;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/helpshift/e/ad;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/helpshift/s;->o:Landroid/widget/EditText;

    sget v1, Lcom/helpshift/k;->c:I

    invoke-virtual {p0, v1}, Lcom/helpshift/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 568
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 571
    :cond_3
    iget-object v1, p0, Lcom/helpshift/s;->s:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/helpshift/s;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/helpshift/s;->r:Ljava/lang/String;

    invoke-static {v1}, Lcom/helpshift/e/ad;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 574
    iget-object v0, p0, Lcom/helpshift/s;->p:Landroid/widget/EditText;

    sget v1, Lcom/helpshift/k;->d:I

    invoke-virtual {p0, v1}, Lcom/helpshift/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 575
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 582
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 553
    :cond_5
    iget-object v3, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v3}, Lcom/helpshift/dx;->m()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/s;->q:Ljava/lang/String;

    .line 554
    iget-object v3, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v3}, Lcom/helpshift/dx;->l()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/s;->r:Ljava/lang/String;

    goto/16 :goto_0

    .line 560
    :cond_6
    invoke-static {v1}, Lcom/helpshift/e/ad;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    iget-object v0, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/k;->b:I

    invoke-virtual {p0, v1}, Lcom/helpshift/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 562
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 576
    :cond_7
    iget-object v1, p0, Lcom/helpshift/s;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/helpshift/s;->r:Ljava/lang/String;

    invoke-static {v1}, Lcom/helpshift/e/ad;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 578
    iget-object v0, p0, Lcom/helpshift/s;->p:Landroid/widget/EditText;

    sget v1, Lcom/helpshift/k;->d:I

    invoke-virtual {p0, v1}, Lcom/helpshift/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 579
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic l(Lcom/helpshift/s;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/helpshift/s;->c()V

    return-void
.end method

.method static synthetic m(Lcom/helpshift/s;)Lcom/helpshift/al;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->g:Lcom/helpshift/al;

    return-object v0
.end method

.method static synthetic n(Lcom/helpshift/s;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/helpshift/s;->d()V

    return-void
.end method

.method static synthetic o(Lcom/helpshift/s;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->C:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/helpshift/s;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->B:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic q(Lcom/helpshift/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/helpshift/s;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r(Lcom/helpshift/s;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/helpshift/s;->f()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s(Lcom/helpshift/s;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic t(Lcom/helpshift/s;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/s;->p:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 488
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 489
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 490
    if-nez p1, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/helpshift/s;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/helpshift/e/b;->a(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    invoke-direct {p0, v0, v2}, Lcom/helpshift/s;->a(Ljava/lang/String;I)V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    const/16 v0, 0x7fbb

    if-ne p1, v0, :cond_3

    .line 496
    invoke-static {v1}, Lcom/helpshift/HSConversation;->b(Z)V

    .line 497
    const-string/jumbo v0, "action"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    const-string/jumbo v1, "startConversation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 500
    iput-boolean v2, p0, Lcom/helpshift/s;->y:Z

    .line 501
    invoke-direct {p0}, Lcom/helpshift/s;->j()V

    goto :goto_0

    .line 502
    :cond_2
    const-string/jumbo v1, "ticketAvoided"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/helpshift/s;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 507
    :cond_3
    invoke-static {v1}, Lcom/helpshift/HSConversation;->b(Z)V

    .line 508
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "SCREENSHOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 510
    invoke-direct {p0, v0}, Lcom/helpshift/s;->b(Ljava/lang/String;)V

    .line 511
    invoke-direct {p0, v0}, Lcom/helpshift/s;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_4
    invoke-direct {p0}, Lcom/helpshift/s;->d()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 670
    sget v0, Lcom/helpshift/i;->b:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 673
    iget-object v0, p0, Lcom/helpshift/s;->a:Lcom/helpshift/app/a;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/app/a;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 675
    sget v0, Lcom/helpshift/g;->d:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/s;->l:Landroid/view/MenuItem;

    .line 676
    iget-object v0, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    iget-object v1, p0, Lcom/helpshift/s;->l:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 678
    sget v0, Lcom/helpshift/g;->e:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/s;->m:Landroid/view/MenuItem;

    .line 679
    iget-object v0, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    iget-object v1, p0, Lcom/helpshift/s;->m:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/e/ak;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 681
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->Y()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    sget v0, Lcom/helpshift/g;->e:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 686
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpshift/s;->a(Z)V

    .line 687
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v2, 0x400

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/helpshift/s;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/helpshift/m;

    iput-object v0, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    .line 285
    invoke-virtual {p0}, Lcom/helpshift/s;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/s;->e:Landroid/os/Bundle;

    .line 286
    iget-object v0, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    invoke-virtual {v0}, Lcom/helpshift/m;->c()Lcom/helpshift/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/s;->a:Lcom/helpshift/app/a;

    .line 288
    iget-object v0, p0, Lcom/helpshift/s;->e:Landroid/os/Bundle;

    const-string/jumbo v1, "showInFullScreen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    invoke-virtual {v0}, Lcom/helpshift/m;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 295
    :cond_0
    new-instance v0, Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    invoke-direct {v0, v1}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/s;->g:Lcom/helpshift/al;

    .line 296
    iget-object v0, p0, Lcom/helpshift/s;->g:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iput-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    .line 297
    iget-object v0, p0, Lcom/helpshift/s;->g:Lcom/helpshift/al;

    iget-object v0, v0, Lcom/helpshift/al;->b:Lcom/helpshift/ai;

    iput-object v0, p0, Lcom/helpshift/s;->h:Lcom/helpshift/ai;

    .line 299
    invoke-direct {p0}, Lcom/helpshift/s;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/helpshift/s;->g:Lcom/helpshift/al;

    new-instance v1, Lcom/helpshift/ad;

    invoke-direct {v1, p0}, Lcom/helpshift/ad;-><init>(Lcom/helpshift/s;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/al;->a(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-static {v0}, Lcom/helpshift/e/ai;->c(Lcom/helpshift/dx;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/s;->s:Ljava/lang/Boolean;

    .line 310
    iget-object v0, p0, Lcom/helpshift/s;->e:Landroid/os/Bundle;

    const-string/jumbo v1, "decomp"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/s;->i:Ljava/lang/Boolean;

    .line 311
    iget-object v0, p0, Lcom/helpshift/s;->e:Landroid/os/Bundle;

    const-string/jumbo v1, "showConvOnReportIssue"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/s;->j:Ljava/lang/Boolean;

    .line 313
    iget-object v0, p0, Lcom/helpshift/s;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    sput-boolean v4, Lcom/helpshift/ah;->a:Z

    .line 317
    :cond_2
    iput-boolean v3, p0, Lcom/helpshift/s;->z:Z

    .line 318
    invoke-virtual {p0, v4}, Lcom/helpshift/s;->setHasOptionsMenu(Z)V

    .line 319
    sget v0, Lcom/helpshift/h;->b:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 418
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 419
    sget v2, Lcom/helpshift/g;->d:I

    if-ne v1, v2, :cond_2

    .line 420
    invoke-direct {p0}, Lcom/helpshift/s;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/helpshift/s;->a(Landroid/view/View;)V

    .line 422
    invoke-direct {p0}, Lcom/helpshift/s;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/helpshift/s;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    invoke-direct {p0}, Lcom/helpshift/s;->i()V

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/helpshift/s;->j()V

    goto :goto_0

    .line 430
    :cond_2
    const v2, 0x102002c

    if-ne v1, v2, :cond_3

    .line 431
    invoke-virtual {p0}, Lcom/helpshift/s;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 433
    :cond_3
    sget v2, Lcom/helpshift/g;->e:I

    if-ne v1, v2, :cond_4

    .line 434
    invoke-direct {p0}, Lcom/helpshift/s;->g()V

    goto :goto_0

    .line 437
    :cond_4
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 265
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpshift/s;->a(Z)V

    .line 269
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->ac()Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->t()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-direct {p0}, Lcom/helpshift/s;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->w(Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/helpshift/s;->u:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/helpshift/s;->b(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->l(Ljava/lang/String;)V

    .line 279
    return-void

    .line 273
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/s;->e:Landroid/os/Bundle;

    const-string/jumbo v1, "dropMeta"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helpshift/e/aj;->a(Lcom/helpshift/bj;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 691
    sget v0, Lcom/helpshift/g;->e:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/s;->m:Landroid/view/MenuItem;

    .line 692
    iget-object v0, p0, Lcom/helpshift/s;->m:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->Y()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/helpshift/s;->m:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 695
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 587
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 588
    iget-boolean v0, p0, Lcom/helpshift/s;->y:Z

    if-nez v0, :cond_0

    .line 589
    const-string/jumbo v0, "i"

    invoke-static {v0}, Lcom/helpshift/br;->a(Ljava/lang/String;)V

    .line 592
    :cond_0
    const-string/jumbo v0, ""

    .line 593
    iget-object v1, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->R()Ljava/lang/String;

    move-result-object v1

    .line 594
    iget-object v2, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v2}, Lcom/helpshift/dx;->ac()Ljava/lang/String;

    move-result-object v2

    .line 596
    iget-object v3, p0, Lcom/helpshift/s;->e:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 597
    iget-object v3, p0, Lcom/helpshift/s;->e:Landroid/os/Bundle;

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 598
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    :cond_1
    iget-boolean v3, p0, Lcom/helpshift/s;->z:Z

    if-eqz v3, :cond_2

    .line 608
    iget-object v0, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    :goto_0
    iput-boolean v6, p0, Lcom/helpshift/s;->y:Z

    .line 618
    iput-boolean v6, p0, Lcom/helpshift/s;->z:Z

    .line 619
    iget-object v0, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 620
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v0}, Lcom/helpshift/dx;->U()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpshift/s;->c(Ljava/lang/String;)V

    .line 621
    return-void

    .line 609
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 610
    iget-object v0, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 611
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 612
    iget-object v1, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 614
    :cond_4
    iget-object v0, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 652
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 653
    iget-boolean v0, p0, Lcom/helpshift/s;->A:Z

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    invoke-static {v0}, Lcom/helpshift/ah;->a(Landroid/app/Activity;)V

    .line 656
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/s;->A:Z

    .line 657
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 661
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 662
    iget-boolean v0, p0, Lcom/helpshift/s;->A:Z

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    invoke-static {v0}, Lcom/helpshift/ah;->b(Landroid/app/Activity;)V

    .line 665
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 326
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 328
    sget v0, Lcom/helpshift/g;->f:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    .line 329
    iget-object v0, p0, Lcom/helpshift/s;->n:Landroid/widget/TextView;

    new-instance v1, Lcom/helpshift/ae;

    invoke-direct {v1, p0}, Lcom/helpshift/ae;-><init>(Lcom/helpshift/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 342
    sget v0, Lcom/helpshift/g;->g:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/helpshift/s;->o:Landroid/widget/EditText;

    .line 343
    iget-object v0, p0, Lcom/helpshift/s;->o:Landroid/widget/EditText;

    new-instance v1, Lcom/helpshift/af;

    invoke-direct {v1, p0}, Lcom/helpshift/af;-><init>(Lcom/helpshift/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 356
    sget v0, Lcom/helpshift/g;->h:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/helpshift/s;->p:Landroid/widget/EditText;

    .line 357
    iget-object v0, p0, Lcom/helpshift/s;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/helpshift/u;

    invoke-direct {v1, p0}, Lcom/helpshift/u;-><init>(Lcom/helpshift/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 370
    iget-object v0, p0, Lcom/helpshift/s;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/helpshift/s;->p:Landroid/widget/EditText;

    sget v1, Lcom/helpshift/k;->e:I

    invoke-virtual {p0, v1}, Lcom/helpshift/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-static {v0}, Lcom/helpshift/e/ai;->a(Lcom/helpshift/dx;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/helpshift/s;->o:Landroid/widget/EditText;

    const-string/jumbo v1, "Anonymous"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-static {v0}, Lcom/helpshift/e/ai;->b(Lcom/helpshift/dx;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/helpshift/s;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/helpshift/s;->p:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/helpshift/s;->d:Lcom/helpshift/m;

    invoke-virtual {v0}, Lcom/helpshift/m;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 388
    iget-object v0, p0, Lcom/helpshift/s;->a:Lcom/helpshift/app/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->a(Z)V

    .line 389
    iget-object v0, p0, Lcom/helpshift/s;->a:Lcom/helpshift/app/a;

    sget v1, Lcom/helpshift/k;->f:I

    invoke-virtual {p0, v1}, Lcom/helpshift/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/app/a;->a(Ljava/lang/String;)V

    .line 391
    sget v0, Lcom/helpshift/g;->i:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/helpshift/s;->t:Landroid/widget/ImageView;

    .line 392
    iget-object v0, p0, Lcom/helpshift/s;->t:Landroid/widget/ImageView;

    new-instance v1, Lcom/helpshift/v;

    invoke-direct {v1, p0}, Lcom/helpshift/v;-><init>(Lcom/helpshift/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/helpshift/s;->w:Landroid/widget/ImageButton;

    .line 400
    iget-object v0, p0, Lcom/helpshift/s;->w:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/w;

    invoke-direct {v1, p0}, Lcom/helpshift/w;-><init>(Lcom/helpshift/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    return-void

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/helpshift/s;->o:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/helpshift/s;->p:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/helpshift/s;->f:Lcom/helpshift/dx;

    invoke-virtual {v1}, Lcom/helpshift/dx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
