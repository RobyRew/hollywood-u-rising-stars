.class public Lcom/applovin/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/adview/a;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/applovin/c/n;

.field private c:Lcom/applovin/c/f;

.field private d:Lcom/applovin/c/l;

.field private e:Lcom/applovin/c/g;

.field private f:Lcom/applovin/a/a/ah;

.field private g:Lcom/applovin/a/a/ab;

.field private h:Lcom/applovin/a/a/ae;

.field private i:Lcom/applovin/c/a;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;

.field private volatile m:Lcom/applovin/c/a;

.field private n:Lcom/applovin/adview/g;

.field private o:Ljava/lang/ref/WeakReference;

.field private final p:Ljava/util/concurrent/atomic/AtomicReference;

.field private volatile q:Z

.field private volatile r:Z

.field private volatile s:Z

.field private volatile t:Z

.field private volatile u:Lcom/applovin/c/d;

.field private volatile v:Lcom/applovin/c/c;

.field private volatile w:Lcom/applovin/c/j;

.field private volatile x:Lcom/applovin/c/b;

.field private volatile y:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/a/a/a;->m:Lcom/applovin/c/a;

    iput-object v0, p0, Lcom/applovin/a/a/a;->n:Lcom/applovin/adview/g;

    iput-object v0, p0, Lcom/applovin/a/a/a;->o:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/applovin/a/a/a;->p:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean v1, p0, Lcom/applovin/a/a/a;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/a/a/a;->r:Z

    iput-boolean v1, p0, Lcom/applovin/a/a/a;->s:Z

    iput-boolean v1, p0, Lcom/applovin/a/a/a;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/a/a;)Lcom/applovin/c/d;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/a;->u:Lcom/applovin/c/d;

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;Lcom/applovin/c/g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/applovin/a/a/a;->b(Landroid/view/View;Lcom/applovin/c/g;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/applovin/c/n;Lcom/applovin/c/g;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No parent view specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No ad size specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p4, Landroid/app/Activity;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Specified context is not an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p2, p0, Lcom/applovin/a/a/a;->b:Lcom/applovin/c/n;

    invoke-virtual {p2}, Lcom/applovin/c/n;->d()Lcom/applovin/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/a/a;->c:Lcom/applovin/c/f;

    invoke-virtual {p2}, Lcom/applovin/c/n;->f()Lcom/applovin/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/a/a;->d:Lcom/applovin/c/l;

    iput-object p3, p0, Lcom/applovin/a/a/a;->e:Lcom/applovin/c/g;

    move-object v0, p4

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/applovin/a/a/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/applovin/a/b/co;->a()Lcom/applovin/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/a/a;->i:Lcom/applovin/c/a;

    new-instance v0, Lcom/applovin/a/a/ah;

    invoke-direct {v0, p0, p2}, Lcom/applovin/a/a/ah;-><init>(Lcom/applovin/a/a/a;Lcom/applovin/c/n;)V

    iput-object v0, p0, Lcom/applovin/a/a/a;->f:Lcom/applovin/a/a/ah;

    new-instance v0, Lcom/applovin/a/a/v;

    invoke-direct {v0, p0, v2}, Lcom/applovin/a/a/v;-><init>(Lcom/applovin/a/a/a;Lcom/applovin/a/a/d;)V

    iput-object v0, p0, Lcom/applovin/a/a/a;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/applovin/a/a/aa;

    invoke-direct {v0, p0, v2}, Lcom/applovin/a/a/aa;-><init>(Lcom/applovin/a/a/a;Lcom/applovin/a/a/d;)V

    iput-object v0, p0, Lcom/applovin/a/a/a;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/applovin/a/a/y;

    invoke-direct {v0, p0, v2}, Lcom/applovin/a/a/y;-><init>(Lcom/applovin/a/a/a;Lcom/applovin/a/a/d;)V

    iput-object v0, p0, Lcom/applovin/a/a/a;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/applovin/a/a/ab;

    invoke-direct {v0, p0, p2}, Lcom/applovin/a/a/ab;-><init>(Lcom/applovin/a/a/a;Lcom/applovin/c/n;)V

    iput-object v0, p0, Lcom/applovin/a/a/a;->g:Lcom/applovin/a/a/ab;

    invoke-static {p4}, Lcom/applovin/a/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/applovin/a/a/a;->k()Lcom/applovin/a/a/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/a/a;->h:Lcom/applovin/a/a/ae;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/a/a/a;->h:Lcom/applovin/a/a/ae;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/a/a/a;->h:Lcom/applovin/a/a/ae;

    invoke-static {v0, p3}, Lcom/applovin/a/a/a;->b(Landroid/view/View;Lcom/applovin/c/g;)V

    iget-object v0, p0, Lcom/applovin/a/a/a;->h:Lcom/applovin/a/a/ae;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/ae;->setVisibility(I)V

    new-instance v0, Lcom/applovin/a/a/z;

    invoke-direct {v0, p0, v2}, Lcom/applovin/a/a/z;-><init>(Lcom/applovin/a/a/a;Lcom/applovin/a/a/d;)V

    invoke-direct {p0, v0}, Lcom/applovin/a/a/a;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/a/a/a;->q:Z

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/applovin/a/a/a;->d:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinAdView"

    const-string/jumbo v2, "Web view database is corrupt, AdView not loaded"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/applovin/c/a;Lcom/applovin/adview/b;Landroid/net/Uri;)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/applovin/a/a/a;->n:Lcom/applovin/adview/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/a;->d:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinAdView"

    const-string/jumbo v2, "Creating and rendering click overlay"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/adview/g;

    invoke-virtual {p2}, Lcom/applovin/adview/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/a/a/a;->b:Lcom/applovin/c/n;

    invoke-direct {v0, v1, v2}, Lcom/applovin/adview/g;-><init>(Landroid/content/Context;Lcom/applovin/c/n;)V

    iput-object v0, p0, Lcom/applovin/a/a/a;->n:Lcom/applovin/adview/g;

    iget-object v0, p0, Lcom/applovin/a/a/a;->n:Lcom/applovin/adview/g;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/a/a/a;->n:Lcom/applovin/adview/g;

    invoke-virtual {p2, v0}, Lcom/applovin/adview/b;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/a/a/a;->n:Lcom/applovin/adview/g;

    invoke-virtual {p2, v0}, Lcom/applovin/adview/b;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/a/a/a;->c:Lcom/applovin/c/f;

    check-cast v0, Lcom/applovin/a/b/d;

    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/applovin/a/b/d;->b(Lcom/applovin/c/a;Lcom/applovin/adview/b;Lcom/applovin/a/a/a;Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/a/a;->d:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinAdView"

    const-string/jumbo v2, "Skipping click overlay rendering because it already exists"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    const-class v3, Landroid/webkit/WebViewDatabase;

    const-string/jumbo v4, "getCacheTotalSize"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AppLovinAdView"

    const-string/jumbo v3, "Error invoking getCacheTotalSize()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "AppLovinAdView"

    const-string/jumbo v3, "Error invoking getCacheTotalSize()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v2, "AppLovinAdView"

    const-string/jumbo v3, "Error invoking getCacheTotalSize()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v2, "AppLovinAdView"

    const-string/jumbo v3, "getCacheTotalSize() reported exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v2, "AppLovinAdView"

    const-string/jumbo v3, "Unexpected error while checking DB state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/applovin/a/a/a;)Lcom/applovin/c/l;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/a;->d:Lcom/applovin/c/l;

    return-object v0
.end method

.method private static b(Landroid/view/View;Lcom/applovin/c/g;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/c/g;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    invoke-virtual {v3}, Lcom/applovin/c/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/applovin/c/g;->c()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    invoke-virtual {v4}, Lcom/applovin/c/g;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/applovin/c/g;->a()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/applovin/c/g;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v6, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/applovin/c/g;->b()I

    move-result v3

    if-ne v3, v0, :cond_5

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    move v2, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/applovin/c/g;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v6, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/applovin/a/a/a;)Lcom/applovin/a/a/ae;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/a;->h:Lcom/applovin/a/a/ae;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/a/a/a;)Lcom/applovin/c/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/a;->m:Lcom/applovin/c/a;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/a/a/a;)Lcom/applovin/c/n;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/a;->b:Lcom/applovin/c/n;

    return-object v0
.end method

.method static synthetic f(Lcom/applovin/a/a/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/a;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/applovin/a/a/a;)Lcom/applovin/c/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/a;->v:Lcom/applovin/c/c;

    return-object v0
.end method

.method static synthetic h(Lcom/applovin/a/a/a;)Lcom/applovin/c/b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/a;->x:Lcom/applovin/c/b;

    return-object v0
.end method

.method static synthetic i(Lcom/applovin/a/a/a;)Lcom/applovin/c/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/a;->w:Lcom/applovin/c/j;

    return-object v0
.end method

.method private k()Lcom/applovin/a/a/ae;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/applovin/a/a/ae;

    iget-object v1, p0, Lcom/applovin/a/a/a;->f:Lcom/applovin/a/a/ah;

    iget-object v2, p0, Lcom/applovin/a/a/a;->b:Lcom/applovin/c/n;

    iget-object v3, p0, Lcom/applovin/a/a/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/a/a/ae;-><init>(Lcom/applovin/a/a/ah;Lcom/applovin/c/n;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/applovin/a/a/ae;->setBackgroundColor(I)V

    invoke-virtual {v0, v4}, Lcom/applovin/a/a/ae;->setWillNotCacheDrawing(Z)V

    new-instance v1, Lcom/applovin/a/b/bg;

    iget-object v2, p0, Lcom/applovin/a/a/a;->b:Lcom/applovin/c/n;

    invoke-direct {v1, v2}, Lcom/applovin/a/b/bg;-><init>(Lcom/applovin/c/n;)V

    invoke-virtual {v1}, Lcom/applovin/a/b/bg;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/applovin/a/a/ae;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/a/a;->b:Lcom/applovin/c/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/a;->g:Lcom/applovin/a/a/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/a/a/a;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/a;->c:Lcom/applovin/c/f;

    iget-object v1, p0, Lcom/applovin/a/a/a;->e:Lcom/applovin/c/g;

    iget-object v2, p0, Lcom/applovin/a/a/a;->g:Lcom/applovin/a/a/ab;

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/f;->a(Lcom/applovin/c/g;Lcom/applovin/c/d;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AppLovinSdk"

    const-string/jumbo v1, "Unable to load next ad: AppLovinAdView is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/a/a/a;->q:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/applovin/a/a/a;->r:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/applovin/a/a/a;->e()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/applovin/a/a/a;->f()V

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/applovin/c/g;Lcom/applovin/c/n;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No parent view specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_2

    const-string/jumbo v0, "AppLovinSdk"

    const-string/jumbo v1, "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p3, :cond_3

    invoke-static {p5}, Lcom/applovin/a/a/ac;->a(Landroid/util/AttributeSet;)Lcom/applovin/c/g;

    move-result-object p3

    if-nez p3, :cond_3

    sget-object p3, Lcom/applovin/c/g;->a:Lcom/applovin/c/g;

    :cond_3
    if-nez p4, :cond_4

    invoke-static {p2}, Lcom/applovin/c/n;->b(Landroid/content/Context;)Lcom/applovin/c/n;

    move-result-object p4

    :cond_4
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/applovin/c/n;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p4, p3, p2}, Lcom/applovin/a/a/a;->a(Landroid/view/ViewGroup;Lcom/applovin/c/n;Lcom/applovin/c/g;Landroid/content/Context;)V

    invoke-static {p5}, Lcom/applovin/a/a/ac;->b(Landroid/util/AttributeSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/applovin/a/a/a;->a()V

    goto :goto_0
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/a/a;->m:Lcom/applovin/c/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :try_start_0
    iget-object v0, p0, Lcom/applovin/a/a/a;->v:Lcom/applovin/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/a;->v:Lcom/applovin/c/c;

    iget-object v1, p0, Lcom/applovin/a/a/a;->m:Lcom/applovin/c/a;

    invoke-interface {v0, v1}, Lcom/applovin/c/c;->adDisplayed(Lcom/applovin/c/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/a/a;->d:Lcom/applovin/c/l;

    const-string/jumbo v2, "AppLovinAdView"

    const-string/jumbo v3, "Exception while notifying ad display listener"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/applovin/c/a;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/applovin/a/a/a;->q:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/a/a/a;->m:Lcom/applovin/c/a;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/applovin/a/a/a;->d:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Rendering ad # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/applovin/c/a;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/applovin/c/a;->b()Lcom/applovin/c/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/a/a/x;

    iget-object v1, p0, Lcom/applovin/a/a/a;->m:Lcom/applovin/c/a;

    invoke-direct {v0, p0, v1}, Lcom/applovin/a/a/x;-><init>(Lcom/applovin/a/a/a;Lcom/applovin/c/a;)V

    invoke-direct {p0, v0}, Lcom/applovin/a/a/a;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/a/a/a;->p:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/a/a/a;->m:Lcom/applovin/c/a;

    invoke-interface {p1}, Lcom/applovin/c/a;->b()Lcom/applovin/c/g;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/a/a;->e:Lcom/applovin/c/g;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/applovin/a/a/a;->j:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/a/a/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/applovin/a/b/bi;

    iget-object v1, p0, Lcom/applovin/a/a/a;->b:Lcom/applovin/c/n;

    invoke-direct {v0, v1}, Lcom/applovin/a/b/bi;-><init>(Lcom/applovin/c/n;)V

    invoke-virtual {v0}, Lcom/applovin/a/b/bi;->a()V

    :goto_1
    return-void

    :cond_2
    invoke-interface {p1}, Lcom/applovin/c/a;->b()Lcom/applovin/c/g;

    move-result-object v0

    sget-object v1, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/applovin/a/a/a;->l:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/a/a/a;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/a/a/a;->k:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/a/a/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/applovin/a/a/a;->d:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ad # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/applovin/c/a;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is already showing, ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "AppLovinSdk"

    const-string/jumbo v1, "Unable to render ad: AppLovinAdView is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method a(Lcom/applovin/c/a;Lcom/applovin/adview/b;Lcom/applovin/a/a/a;Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/a/a;->c:Lcom/applovin/c/f;

    check-cast v0, Lcom/applovin/a/b/d;

    new-instance v1, Lcom/applovin/a/b/bg;

    iget-object v2, p0, Lcom/applovin/a/a/a;->b:Lcom/applovin/c/n;

    invoke-direct {v1, v2}, Lcom/applovin/a/b/bg;-><init>(Lcom/applovin/c/n;)V

    invoke-virtual {v1}, Lcom/applovin/a/b/bg;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2, p4}, Lcom/applovin/a/a/a;->a(Lcom/applovin/c/a;Lcom/applovin/adview/b;Landroid/net/Uri;)V

    :goto_0
    new-instance v0, Lcom/applovin/a/a/w;

    invoke-direct {v0, p0, p1}, Lcom/applovin/a/a/w;-><init>(Lcom/applovin/a/a/a;Lcom/applovin/c/a;)V

    invoke-direct {p0, v0}, Lcom/applovin/a/a/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p0, p4}, Lcom/applovin/a/b/d;->a(Lcom/applovin/c/a;Lcom/applovin/adview/b;Lcom/applovin/a/a/a;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public a(Lcom/applovin/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/a;->x:Lcom/applovin/c/b;

    return-void
.end method

.method public a(Lcom/applovin/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/a;->v:Lcom/applovin/c/c;

    return-void
.end method

.method public a(Lcom/applovin/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/a;->w:Lcom/applovin/c/j;

    return-void
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/a;->o:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/a/a/a;->r:Z

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/a/a;->c:Lcom/applovin/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/a;->c:Lcom/applovin/c/f;

    iget-object v1, p0, Lcom/applovin/a/a/a;->g:Lcom/applovin/a/a/ab;

    invoke-virtual {p0}, Lcom/applovin/a/a/a;->d()Lcom/applovin/c/g;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/f;->a(Lcom/applovin/c/i;Lcom/applovin/c/g;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/a/a;->h:Lcom/applovin/a/a/ae;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/a/a/a;->h:Lcom/applovin/a/a/ae;

    invoke-virtual {v0}, Lcom/applovin/a/a/ae;->removeAllViews()V

    iget-object v0, p0, Lcom/applovin/a/a/a;->h:Lcom/applovin/a/a/ae;

    invoke-virtual {v0}, Lcom/applovin/a/a/ae;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/a/a/a;->s:Z

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/a/a;->d:Lcom/applovin/c/l;

    const-string/jumbo v2, "AppLovinAdView"

    const-string/jumbo v3, "Unable to destroy ad view"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/applovin/a/a/a;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/a;->c:Lcom/applovin/c/f;

    iget-object v1, p0, Lcom/applovin/a/a/a;->g:Lcom/applovin/a/a/ab;

    iget-object v2, p0, Lcom/applovin/a/a/a;->e:Lcom/applovin/c/g;

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/f;->b(Lcom/applovin/c/i;Lcom/applovin/c/g;)V

    iget-object v0, p0, Lcom/applovin/a/a/a;->l:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/a/a/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/applovin/a/a/r;

    invoke-direct {v0, p0, p1}, Lcom/applovin/a/a/r;-><init>(Lcom/applovin/a/a/a;I)V

    invoke-direct {p0, v0}, Lcom/applovin/a/a/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method b(Lcom/applovin/c/a;)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/a/a/a;->t:Z

    iget-boolean v0, p0, Lcom/applovin/a/a/a;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/a;->c:Lcom/applovin/c/f;

    iget-object v1, p0, Lcom/applovin/a/a/a;->g:Lcom/applovin/a/a/ab;

    iget-object v2, p0, Lcom/applovin/a/a/a;->e:Lcom/applovin/c/g;

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/f;->b(Lcom/applovin/c/i;Lcom/applovin/c/g;)V

    invoke-virtual {p0, p1}, Lcom/applovin/a/a/a;->a(Lcom/applovin/c/a;)V

    :goto_0
    new-instance v0, Lcom/applovin/a/a/d;

    invoke-direct {v0, p0, p1}, Lcom/applovin/a/a/d;-><init>(Lcom/applovin/a/a/a;Lcom/applovin/c/a;)V

    invoke-direct {p0, v0}, Lcom/applovin/a/a/a;->a(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/a/a;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/a/a/a;->d:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinAdView"

    const-string/jumbo v2, "Ad view has paused when an ad was recieved, ad saved for later"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/a/a;->d:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinAdView"

    const-string/jumbo v2, "No provided when to the view controller"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/applovin/a/a/a;->b(I)V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/a/a/a;->y:Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lcom/applovin/a/a/a;->q:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/applovin/a/a/x;

    iget-object v1, p0, Lcom/applovin/a/a/a;->m:Lcom/applovin/c/a;

    invoke-direct {v0, p0, v1}, Lcom/applovin/a/a/x;-><init>(Lcom/applovin/a/a/a;Lcom/applovin/c/a;)V

    invoke-direct {p0, v0}, Lcom/applovin/a/a/a;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/applovin/a/a/a;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/a/a/a;->b()V

    goto :goto_0
.end method

.method public d()Lcom/applovin/c/g;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/a;->e:Lcom/applovin/c/g;

    return-object v0
.end method

.method public e()V
    .locals 3

    iget-boolean v0, p0, Lcom/applovin/a/a/a;->q:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/a/a;->c:Lcom/applovin/c/f;

    iget-object v1, p0, Lcom/applovin/a/a/a;->g:Lcom/applovin/a/a/ab;

    invoke-virtual {p0}, Lcom/applovin/a/a/a;->d()Lcom/applovin/c/g;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/f;->a(Lcom/applovin/c/i;Lcom/applovin/c/g;)V

    iget-object v0, p0, Lcom/applovin/a/a/a;->m:Lcom/applovin/c/a;

    iget-object v1, p0, Lcom/applovin/a/a/a;->i:Lcom/applovin/c/a;

    invoke-virtual {p0, v1}, Lcom/applovin/a/a/a;->a(Lcom/applovin/c/a;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/applovin/a/a/a;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/a/a/a;->s:Z

    goto :goto_0
.end method

.method public f()V
    .locals 3

    iget-boolean v0, p0, Lcom/applovin/a/a/a;->q:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/applovin/a/a/a;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/a/a;->c:Lcom/applovin/c/f;

    iget-object v1, p0, Lcom/applovin/a/a/a;->g:Lcom/applovin/a/a/ab;

    iget-object v2, p0, Lcom/applovin/a/a/a;->e:Lcom/applovin/c/g;

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/f;->b(Lcom/applovin/c/i;Lcom/applovin/c/g;)V

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/a/a;->p:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/c/a;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/applovin/a/a/a;->a(Lcom/applovin/c/a;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/a/a/a;->s:Z

    goto :goto_0
.end method

.method g()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/a;->l:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/a/a/a;->a(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/applovin/a/a/x;

    iget-object v1, p0, Lcom/applovin/a/a/a;->m:Lcom/applovin/c/a;

    invoke-direct {v0, p0, v1}, Lcom/applovin/a/a/x;-><init>(Lcom/applovin/a/a/a;Lcom/applovin/c/a;)V

    invoke-direct {p0, v0}, Lcom/applovin/a/a/a;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/a/a/a;->m:Lcom/applovin/c/a;

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/a/a;->n:Lcom/applovin/adview/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/a/a;->n:Lcom/applovin/adview/g;

    invoke-virtual {v0}, Lcom/applovin/adview/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/applovin/a/a/a;->n:Lcom/applovin/adview/g;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/a/a/a;->n:Lcom/applovin/adview/g;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/a/a;->d:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinAdView"

    const-string/jumbo v2, "Asked to remove an overlay when none existed. Skipping..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/a/a/a;->y:Z

    return v0
.end method

.method public j()V
    .locals 2

    new-instance v0, Lcom/applovin/a/b/bg;

    iget-object v1, p0, Lcom/applovin/a/a/a;->b:Lcom/applovin/c/n;

    invoke-direct {v0, v1}, Lcom/applovin/a/b/bg;-><init>(Lcom/applovin/c/n;)V

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/a/a;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/applovin/adview/AppLovinInterstitialActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/a/a;->a:Landroid/app/Activity;

    check-cast v0, Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/a/a;->o:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/a;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/a/an;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/a/a/an;->dismiss()V

    goto :goto_0
.end method
