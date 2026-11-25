.class Lcom/applovin/a/a/an;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/applovin/a/a/am;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/applovin/c/n;

.field private final c:Lcom/applovin/c/l;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/applovin/adview/b;

.field private f:Ljava/lang/Runnable;

.field private g:Lcom/applovin/a/a/j;

.field private volatile h:Z

.field private volatile i:Z


# direct methods
.method constructor <init>(Lcom/applovin/c/n;Landroid/app/Activity;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v0, 0x1030010

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/applovin/a/a/an;->g:Lcom/applovin/a/a/j;

    iput-boolean v2, p0, Lcom/applovin/a/a/an;->h:Z

    iput-boolean v2, p0, Lcom/applovin/a/a/an;->i:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/applovin/a/a/an;->b:Lcom/applovin/c/n;

    invoke-virtual {p1}, Lcom/applovin/c/n;->f()Lcom/applovin/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/a/an;->c:Lcom/applovin/c/l;

    iput-object p2, p0, Lcom/applovin/a/a/an;->a:Landroid/app/Activity;

    new-instance v0, Lcom/applovin/a/a/i;

    invoke-direct {v0, p0, v1}, Lcom/applovin/a/a/i;-><init>(Lcom/applovin/a/a/an;Lcom/applovin/a/a/ao;)V

    iput-object v0, p0, Lcom/applovin/a/a/an;->f:Ljava/lang/Runnable;

    new-instance v0, Lcom/applovin/adview/b;

    sget-object v1, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    invoke-direct {v0, p1, v1, p2}, Lcom/applovin/adview/b;-><init>(Lcom/applovin/c/n;Lcom/applovin/c/g;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    iget-object v0, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    invoke-virtual {v0, v2}, Lcom/applovin/adview/b;->a(Z)V

    iget-object v0, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    invoke-virtual {v0}, Lcom/applovin/adview/b;->c()Lcom/applovin/adview/a;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/a/a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/a;->a(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/a/a/an;->requestWindowFeature(I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/a/a/an;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/a/an;->c:Lcom/applovin/c/l;

    const-string/jumbo v2, "InterstitialAdDialog"

    const-string/jumbo v3, "Set window flags failed."

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(I)I
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/an;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/applovin/c/p;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/applovin/a/a/an;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/an;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    invoke-virtual {v1, v0}, Lcom/applovin/adview/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/applovin/a/a/an;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/a/a/an;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/applovin/a/a/an;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/a/a/an;->d:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/a/a/an;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/a/a/an;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/applovin/a/a/an;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/applovin/a/a/al;)V
    .locals 14

    const/16 v2, 0xb

    const/16 v13, 0xa

    const/16 v1, 0x9

    const/4 v12, 0x5

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/applovin/a/a/an;->b:Lcom/applovin/c/n;

    invoke-virtual {p0}, Lcom/applovin/a/a/an;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lcom/applovin/a/a/ak;->a(Lcom/applovin/c/n;Landroid/content/Context;Lcom/applovin/a/a/al;)Lcom/applovin/a/a/ak;

    move-result-object v3

    new-instance v0, Lcom/applovin/a/a/g;

    invoke-direct {v0, p0}, Lcom/applovin/a/a/g;-><init>(Lcom/applovin/a/a/an;)V

    invoke-virtual {v3, v0}, Lcom/applovin/a/a/ak;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/applovin/a/b/bg;

    iget-object v0, p0, Lcom/applovin/a/a/an;->b:Lcom/applovin/c/n;

    invoke-direct {v4, v0}, Lcom/applovin/a/b/bg;-><init>(Lcom/applovin/c/n;)V

    invoke-virtual {v4}, Lcom/applovin/a/b/bg;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/a/a/an;->a(I)I

    move-result v5

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4}, Lcom/applovin/a/b/bg;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v5}, Lcom/applovin/a/a/ak;->a(I)V

    invoke-virtual {v4}, Lcom/applovin/a/b/bg;->n()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/a/a/an;->a(I)I

    move-result v0

    invoke-virtual {v4}, Lcom/applovin/a/b/bg;->p()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/applovin/a/a/an;->a(I)I

    move-result v7

    invoke-virtual {v6, v7, v0, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    invoke-virtual {v8, v3, v6}, Lcom/applovin/adview/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Lcom/applovin/a/a/ak;->bringToFront()V

    new-instance v6, Lcom/applovin/a/b/bg;

    iget-object v8, p0, Lcom/applovin/a/a/an;->b:Lcom/applovin/c/n;

    invoke-direct {v6, v8}, Lcom/applovin/a/b/bg;-><init>(Lcom/applovin/c/n;)V

    invoke-virtual {v6}, Lcom/applovin/a/b/bg;->r()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/applovin/a/a/an;->a(I)I

    move-result v6

    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Lcom/applovin/a/a/an;->a:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v10, v5, v6

    add-int/2addr v5, v6

    invoke-direct {v9, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4}, Lcom/applovin/a/b/bg;->x()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0, v12}, Lcom/applovin/a/a/an;->a(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v12}, Lcom/applovin/a/a/an;->a(I)I

    move-result v1

    sub-int v1, v7, v1

    invoke-virtual {v9, v11, v0, v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Lcom/applovin/a/a/h;

    invoke-direct {v0, p0, v3}, Lcom/applovin/a/a/h;-><init>(Lcom/applovin/a/a/an;Lcom/applovin/a/a/ak;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    invoke-virtual {v0, v8, v9}, Lcom/applovin/adview/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8}, Landroid/view/View;->bringToFront()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/applovin/a/a/an;Lcom/applovin/a/a/al;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/a/an;->a(Lcom/applovin/a/a/al;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/a/an;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/a/a/an;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/a/a/an;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/an;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/a/a/an;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/a/a/an;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/applovin/a/a/an;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/a/a/an;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/applovin/a/a/an;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic e(Lcom/applovin/a/a/an;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/a/a/an;->h:Z

    return v0
.end method

.method static synthetic f(Lcom/applovin/a/a/an;)Lcom/applovin/adview/b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    return-object v0
.end method

.method static synthetic g(Lcom/applovin/a/a/an;)Lcom/applovin/c/l;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/an;->c:Lcom/applovin/c/l;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/a/a/j;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    new-instance v1, Lcom/applovin/a/a/ao;

    invoke-direct {v1, p0, p1}, Lcom/applovin/a/a/ao;-><init>(Lcom/applovin/a/a/an;Lcom/applovin/a/a/j;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/b;->a(Lcom/applovin/c/c;)V

    iget-object v0, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    new-instance v1, Lcom/applovin/a/a/ap;

    invoke-direct {v1, p0, p1}, Lcom/applovin/a/a/ap;-><init>(Lcom/applovin/a/a/an;Lcom/applovin/a/a/j;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/b;->a(Lcom/applovin/c/b;)V

    iget-object v0, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    new-instance v1, Lcom/applovin/a/a/e;

    invoke-direct {v1, p0, p1}, Lcom/applovin/a/a/e;-><init>(Lcom/applovin/a/a/an;Lcom/applovin/a/a/j;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/b;->a(Lcom/applovin/c/j;)V

    iput-object p1, p0, Lcom/applovin/a/a/an;->g:Lcom/applovin/a/a/j;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/a/a/j;->a(Z)V

    return-void
.end method

.method public a(Lcom/applovin/c/a;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/an;->a:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/a/a/f;

    invoke-direct {v1, p0, p1}, Lcom/applovin/a/a/f;-><init>(Lcom/applovin/a/a/an;Lcom/applovin/c/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/a/a/an;->g:Lcom/applovin/a/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/an;->g:Lcom/applovin/a/a/j;

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->k()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    invoke-virtual {v0}, Lcom/applovin/adview/b;->b()V

    :cond_1
    iput-object v1, p0, Lcom/applovin/a/a/an;->g:Lcom/applovin/a/a/j;

    iput-object v1, p0, Lcom/applovin/a/a/an;->e:Lcom/applovin/adview/b;

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/applovin/a/a/an;->a()V

    return-void
.end method
