.class public Lcom/applovin/adview/AppLovinInterstitialActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/applovin/a/a/am;


# static fields
.field public static volatile a:Lcom/applovin/a/a/j;


# instance fields
.field private A:Lcom/applovin/a/a/ak;

.field private B:Landroid/view/View;

.field private C:Lcom/applovin/a/a/ai;

.field private volatile D:Ljava/util/UUID;

.field private E:Landroid/widget/ImageView;

.field private F:Ljava/lang/ref/WeakReference;

.field private b:Lcom/applovin/adview/b;

.field private c:Lcom/applovin/a/a/j;

.field private volatile d:Z

.field private e:Lcom/applovin/c/l;

.field private f:Lcom/applovin/a/b/bg;

.field private g:Lcom/applovin/a/b/e;

.field private volatile h:Lcom/applovin/a/b/a;

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Z

.field private volatile q:Z

.field private r:Z

.field private volatile s:Z

.field private t:Z

.field private u:I

.field private v:Landroid/os/Handler;

.field private w:Landroid/widget/FrameLayout;

.field private x:Lcom/applovin/a/a/b;

.field private y:Lcom/applovin/a/a/ak;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/a/a/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Z

    invoke-static {}, Lcom/applovin/a/b/co;->a()Lcom/applovin/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->i:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->j:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->k:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->l:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->m:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->n:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->o:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->p:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->q:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->r:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Z

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Z

    iput v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->F:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static a(Landroid/view/Display;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;I)I
    .locals 0

    iput p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:I

    return p1
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/a/b/a;)Lcom/applovin/a/b/a;
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->F:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/applovin/a/b/co;->a(F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)V

    return-void
.end method

.method private a(ILjava/util/UUID;)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->D:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-gtz p1, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/ai;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->t:Z

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    invoke-virtual {v1, v0}, Lcom/applovin/a/a/ai;->a(I)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/os/Handler;

    new-instance v2, Lcom/applovin/adview/p;

    invoke-direct {v2, p0, v0, p2}, Lcom/applovin/adview/p;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;ILjava/util/UUID;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(JLcom/applovin/a/a/ak;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/adview/o;

    invoke-direct {v1, p0, p3}, Lcom/applovin/adview/o;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/a/a/ak;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;ILjava/util/UUID;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(ILjava/util/UUID;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/c/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(Lcom/applovin/c/a;)V

    return-void
.end method

.method private a(Lcom/applovin/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->g()Lcom/applovin/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/c/c;->adDisplayed(Lcom/applovin/c/a;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->j:Z

    return-void
.end method

.method private a(Lcom/applovin/c/a;DZ)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->m:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->f()Lcom/applovin/c/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/applovin/c/j;->videoPlaybackEnded(Lcom/applovin/c/a;DZ)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->F:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v1}, Lcom/applovin/a/b/bg;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v1}, Lcom/applovin/a/b/bg;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->o:Z

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v1}, Lcom/applovin/a/b/bg;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->q:Z

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/applovin/adview/AppLovinInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "com.applovin.interstitial.should_resume_video"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "com.applovin.interstitial.last_video_position"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->D:Ljava/util/UUID;

    invoke-direct {p0, p1, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(ILjava/util/UUID;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/c/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/c/a;)V

    return-void
.end method

.method private b(Lcom/applovin/c/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/c/a;)V

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->dismiss()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/adview/AppLovinInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->o:Z

    return p1
.end method

.method private c(I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/applovin/c/p;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/c/l;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/c/l;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->m()Lcom/applovin/a/b/dj;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v1}, Lcom/applovin/a/b/a;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/applovin/a/b/dj;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/a/b;

    invoke-direct {v1, p0}, Lcom/applovin/a/a/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    new-instance v2, Lcom/applovin/adview/j;

    invoke-direct {v2, p0}, Lcom/applovin/adview/j;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v2}, Lcom/applovin/a/a/b;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    new-instance v2, Lcom/applovin/adview/s;

    invoke-direct {v2, p0}, Lcom/applovin/adview/s;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v2}, Lcom/applovin/a/a/b;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    new-instance v2, Lcom/applovin/adview/t;

    invoke-direct {v2, p0}, Lcom/applovin/adview/t;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v2}, Lcom/applovin/a/a/b;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    invoke-virtual {v1, v0}, Lcom/applovin/a/a/b;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    new-instance v1, Lcom/applovin/adview/f;

    new-instance v2, Lcom/applovin/adview/v;

    invoke-direct {v2, p0}, Lcom/applovin/adview/v;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/applovin/adview/f;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m()V

    return-void
.end method

.method private c(Lcom/applovin/c/a;)V
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->k:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->g()Lcom/applovin/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/c/c;->adHidden(Lcom/applovin/c/a;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/applovin/adview/AppLovinInterstitialActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->p:Z

    return p1
.end method

.method static synthetic d(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->f()V

    return-void
.end method

.method private d(Lcom/applovin/c/a;)V
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->l:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->f()Lcom/applovin/c/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/c/j;->videoPlaybackBegan(Lcom/applovin/c/a;)V

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->G()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/applovin/adview/AppLovinInterstitialActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->v:Landroid/os/Handler;

    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->j()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->n()V

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->d(Lcom/applovin/c/a;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    invoke-virtual {v0}, Lcom/applovin/a/a/b;->start()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->o()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(I)V

    return-void
.end method

.method static synthetic g(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->i()V

    return-void
.end method

.method private h()V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v1, 0x3

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/a/b/e;

    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v3}, Lcom/applovin/a/b/a;->i()Lcom/applovin/a/a/al;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lcom/applovin/a/a/ak;->a(Lcom/applovin/c/n;Landroid/content/Context;Lcom/applovin/a/a/al;)Lcom/applovin/a/a/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    invoke-virtual {v0, v8}, Lcom/applovin/a/a/ak;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    new-instance v3, Lcom/applovin/adview/x;

    invoke-direct {v3, p0}, Lcom/applovin/adview/x;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v3}, Lcom/applovin/a/a/ak;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->m()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    or-int/lit8 v0, v0, 0x30

    invoke-direct {v4, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    invoke-virtual {v0, v3}, Lcom/applovin/a/a/ak;->a(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->o()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v5

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->q()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v6

    invoke-virtual {v4, v6, v5, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    invoke-virtual {v0, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/a/b/e;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v4}, Lcom/applovin/a/b/a;->i()Lcom/applovin/a/a/al;

    move-result-object v4

    invoke-static {v0, p0, v4}, Lcom/applovin/a/a/ak;->a(Lcom/applovin/c/n;Landroid/content/Context;Lcom/applovin/a/a/al;)Lcom/applovin/a/a/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    invoke-virtual {v0, v8}, Lcom/applovin/a/a/ak;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    new-instance v4, Lcom/applovin/adview/y;

    invoke-direct {v4, p0}, Lcom/applovin/adview/y;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v4}, Lcom/applovin/a/a/ak;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    or-int/lit8 v0, v0, 0x30

    invoke-direct {v4, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v6, v5, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    invoke-virtual {v0, v3}, Lcom/applovin/a/a/ak;->a(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    invoke-virtual {v0, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    invoke-virtual {v0}, Lcom/applovin/a/a/ak;->bringToFront()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/applovin/a/b/bg;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/a/b/e;

    invoke-direct {v0, v4}, Lcom/applovin/a/b/bg;-><init>(Lcom/applovin/a/b/e;)V

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v0

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Landroid/view/View;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Landroid/view/View;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    add-int/2addr v3, v0

    invoke-direct {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v0

    sub-int v4, v5, v0

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    or-int/lit8 v0, v0, 0x30

    invoke-direct {v5, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v6}, Lcom/applovin/a/b/bg;->w()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    or-int/lit8 v1, v1, 0x30

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Landroid/view/View;

    new-instance v2, Lcom/applovin/adview/z;

    invoke-direct {v2, p0}, Lcom/applovin/adview/z;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Landroid/view/View;

    new-instance v2, Lcom/applovin/adview/aa;

    invoke-direct {v2, p0}, Lcom/applovin/adview/aa;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Landroid/view/View;

    invoke-virtual {v1, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method static synthetic h(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->p()V

    return-void
.end method

.method private i()V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->E:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->B()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->C()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->D()I

    move-result v0

    invoke-direct {v2, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->E:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->E()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v0

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v3, "AppLovinInterstitialActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Added mute button with params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v0}, Lcom/applovin/a/b/a;->m()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->E:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/a/b/e;

    invoke-virtual {v4}, Lcom/applovin/a/b/e;->m()Lcom/applovin/a/b/dj;

    move-result-object v4

    invoke-virtual {v4, v0, p0, v6}, Lcom/applovin/a/b/dj;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/applovin/c/p;->a(Landroid/widget/ImageView;Landroid/net/Uri;I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->E:Landroid/widget/ImageView;

    new-instance v1, Lcom/applovin/adview/ab;

    invoke-direct {v1, p0}, Lcom/applovin/adview/ab;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v0}, Lcom/applovin/a/b/a;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic i(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->g()V

    return-void
.end method

.method private j()V
    .locals 1

    new-instance v0, Lcom/applovin/adview/m;

    invoke-direct {v0, p0}, Lcom/applovin/adview/m;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic j(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->t()V

    return-void
.end method

.method static synthetic k(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/b/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/a/b/e;

    return-object v0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->r()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic l(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/b/bg;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    return-object v0
.end method

.method private l()V
    .locals 1

    new-instance v0, Lcom/applovin/adview/n;

    invoke-direct {v0, p0}, Lcom/applovin/adview/n;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/ai;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    return-object v0
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v0}, Lcom/applovin/a/b/a;->e()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    :goto_0
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v1}, Lcom/applovin/a/b/a;->e()F

    move-result v1

    invoke-static {v1}, Lcom/applovin/a/b/co;->c(F)J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(JLcom/applovin/a/a/ak;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    goto :goto_0
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    if-nez v0, :cond_0

    new-instance v0, Lcom/applovin/a/a/ai;

    invoke-direct {v0, p0}, Lcom/applovin/a/a/ai;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->q()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    invoke-virtual {v1, v0}, Lcom/applovin/a/a/ai;->c(I)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v2}, Lcom/applovin/a/b/bg;->h()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/applovin/a/a/ai;->b(F)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    invoke-virtual {v1, v0}, Lcom/applovin/a/a/ai;->d(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v1}, Lcom/applovin/a/b/bg;->g()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/ai;->a(F)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/ai;->b(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v1}, Lcom/applovin/a/b/bg;->f()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v1

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v2}, Lcom/applovin/a/b/bg;->f()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v2

    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v3}, Lcom/applovin/a/b/bg;->v()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v1}, Lcom/applovin/a/b/bg;->u()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    invoke-virtual {v0}, Lcom/applovin/a/a/ai;->bringToFront()V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->C:Lcom/applovin/a/a/ai;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->o()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/applovin/a/a/ai;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic n(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->r()V

    return-void
.end method

.method private o()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v0}, Lcom/applovin/a/b/a;->g()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v1}, Lcom/applovin/a/b/bg;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->u:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic o(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/ak;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    return-object v0
.end method

.method static synthetic p(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/ak;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    return-object v0
.end method

.method private p()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->D:Ljava/util/UUID;

    return-void
.end method

.method private q()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic q(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->u()V

    return-void
.end method

.method private r()V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->t()V

    return-void
.end method

.method static synthetic r(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->o:Z

    return v0
.end method

.method private s()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/adview/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/adview/b;

    new-instance v1, Lcom/applovin/adview/q;

    invoke-direct {v1, p0}, Lcom/applovin/adview/q;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/b;->a(Lcom/applovin/c/c;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/adview/b;

    new-instance v1, Lcom/applovin/adview/r;

    invoke-direct {v1, p0}, Lcom/applovin/adview/r;-><init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/b;->a(Lcom/applovin/c/b;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->e()Lcom/applovin/c/a;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/b/a;

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->e()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->h()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v0}, Lcom/applovin/a/b/a;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c()V

    :goto_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    invoke-virtual {v0}, Lcom/applovin/a/a/ak;->bringToFront()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    invoke-virtual {v0}, Lcom/applovin/a/a/ak;->bringToFront()V

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/adview/b;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/b;->a(Lcom/applovin/c/a;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    invoke-virtual {v0, v3}, Lcom/applovin/a/a/j;->a(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iput-boolean v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->i:Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "AppLovinInterstitialActivity"

    const-string/jumbo v2, "Video file was missing or null - please make sure your app has the WRITE_EXTERNAL_STORAGE permission!"

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->t()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "AdView was null"

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic s(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic t(Lcom/applovin/adview/AppLovinInterstitialActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Landroid/view/View;

    return-object v0
.end method

.method private t()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->w()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    invoke-virtual {v0}, Lcom/applovin/a/a/b;->stopPlayback()V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/adview/b;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    :cond_1
    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->w:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    invoke-virtual {v0}, Lcom/applovin/a/a/ak;->bringToFront()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v0}, Lcom/applovin/a/b/a;->f()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v0}, Lcom/applovin/a/b/a;->f()F

    move-result v0

    invoke-static {v0}, Lcom/applovin/a/b/co;->c(F)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(JLcom/applovin/a/a/ak;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->q:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/ak;->setVisibility(I)V

    goto :goto_0
.end method

.method private u()V
    .locals 5

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->v()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v0}, Lcom/applovin/a/b/a;->m()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v2}, Lcom/applovin/a/b/bg;->C()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(I)I

    move-result v2

    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->E:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/a/b/e;

    invoke-virtual {v4}, Lcom/applovin/a/b/e;->m()Lcom/applovin/a/b/dj;

    move-result-object v4

    invoke-virtual {v4, v0, p0, v1}, Lcom/applovin/a/b/dj;->a(Ljava/lang/String;Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/applovin/c/p;->a(Landroid/widget/ImageView;Landroid/net/Uri;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-virtual {v0}, Lcom/applovin/a/b/a;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic u(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->p:Z

    return v0
.end method

.method static synthetic v(Lcom/applovin/adview/AppLovinInterstitialActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->B:Landroid/view/View;

    return-object v0
.end method

.method private v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->s:Z

    return v0
.end method

.method private w()V
    .locals 6

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-boolean v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->m:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->n:Z

    if-eqz v2, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/a/b/e;

    invoke-virtual {v2}, Lcom/applovin/a/b/e;->p()Lcom/applovin/a/b/h;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    double-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/applovin/a/b/a;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/applovin/a/b/h;->a(Ljava/lang/String;Lcom/applovin/c/m;)V

    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    const-wide v4, 0x4057c00000000000L    # 95.0

    cmpl-double v2, v0, v4

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/c/a;DZ)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    invoke-virtual {v2}, Lcom/applovin/a/a/b;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    invoke-virtual {v3}, Lcom/applovin/a/a/b;->getCurrentPosition()I

    move-result v3

    int-to-double v4, v3

    int-to-double v2, v2

    div-double v2, v4, v2

    mul-double/2addr v0, v2

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "AppLovinInterstitialActivity"

    const-string/jumbo v1, "No video view detected on video end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method static synthetic w(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->j()V

    return-void
.end method

.method private x()Landroid/content/SharedPreferences;
    .locals 2

    const-string/jumbo v0, "com.applovin.interstitial.sharedpreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic x(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->l()V

    return-void
.end method

.method static synthetic y(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->j:Z

    return v0
.end method

.method static synthetic z(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/a/a/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Initialized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/applovin/a/a/j;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; CleanedUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/applovin/a/a/j;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AppLovinInterstitialActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to properly render an Interstitial Activity, due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/applovin/a/b/co;->a()Lcom/applovin/a/b/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppLovinInterstitialActivity"

    const-string/jumbo v2, "Failed to show a video ad due to error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/adview/b;

    invoke-virtual {v0}, Lcom/applovin/adview/b;->c()Lcom/applovin/adview/a;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/a;->b(Z)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->w()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->h:Lcom/applovin/a/b/a;

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/c/a;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/j;->a(Z)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->k()V

    :cond_1
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinInterstitialActivity"

    const-string/jumbo v2, "Back button was pressed; forwarding to Android for handling..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    invoke-virtual {v0}, Lcom/applovin/a/a/ak;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    invoke-virtual {v0}, Lcom/applovin/a/a/ak;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinInterstitialActivity"

    const-string/jumbo v2, "Back button was pressed; forwarding as a click to skip button."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    invoke-virtual {v0}, Lcom/applovin/a/a/ak;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    invoke-virtual {v0}, Lcom/applovin/a/a/ak;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    invoke-virtual {v0}, Lcom/applovin/a/a/ak;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinInterstitialActivity"

    const-string/jumbo v2, "Back button was pressed; forwarding as a click to close button."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    invoke-virtual {v0}, Lcom/applovin/a/a/ak;->performClick()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinInterstitialActivity"

    const-string/jumbo v2, "Back button was pressed, but was not eligible for dismissal."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->requestWindowFeature(I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "com.applovin.interstitial.wrapper_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v0}, Lcom/applovin/a/a/j;->a(Ljava/lang/String;)Lcom/applovin/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    if-nez v0, :cond_0

    sget-object v0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/a/a/j;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/a/a/j;

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->e()Lcom/applovin/c/a;

    move-result-object v3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->d()Lcom/applovin/c/n;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/b/e;

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/a/b/e;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    invoke-virtual {v0}, Lcom/applovin/a/a/j;->d()Lcom/applovin/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/c/n;->f()Lcom/applovin/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/c/l;

    new-instance v0, Lcom/applovin/a/b/bg;

    iget-object v4, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    invoke-virtual {v4}, Lcom/applovin/a/a/j;->d()Lcom/applovin/c/n;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/applovin/a/b/bg;-><init>(Lcom/applovin/c/n;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    if-eqz v3, :cond_a

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Landroid/view/Display;)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-ne v3, v6, :cond_1

    if-eqz v4, :cond_4

    :cond_1
    if-ne v3, v6, :cond_2

    if-eq v4, v6, :cond_4

    :cond_2
    if-ne v3, v1, :cond_3

    if-eq v4, v1, :cond_4

    :cond_3
    if-ne v3, v1, :cond_6

    if-ne v4, v7, :cond_6

    :cond_4
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    invoke-virtual {v3}, Lcom/applovin/a/a/j;->j()Lcom/applovin/a/b/b;

    move-result-object v3

    sget-object v5, Lcom/applovin/a/b/b;->b:Lcom/applovin/a/b/b;

    if-ne v3, v5, :cond_8

    if-eqz v0, :cond_7

    if-eq v4, v1, :cond_5

    if-eq v4, v7, :cond_5

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Z

    invoke-virtual {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    :cond_5
    :goto_2
    new-instance v0, Lcom/applovin/adview/b;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->g:Lcom/applovin/a/b/e;

    sget-object v3, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    invoke-direct {v0, v1, v3, p0}, Lcom/applovin/adview/b;-><init>(Lcom/applovin/c/n;Lcom/applovin/c/g;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/adview/b;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/adview/b;

    invoke-virtual {v0, v2}, Lcom/applovin/adview/b;->a(Z)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    invoke-virtual {v0, p0}, Lcom/applovin/a/a/j;->a(Lcom/applovin/a/a/am;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->r:Z

    :goto_3
    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "com.applovin.interstitial.should_resume_video"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b()V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->s()V

    return-void

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_5

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Z

    invoke-virtual {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_5

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Z

    invoke-virtual {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_9
    if-eq v4, v1, :cond_5

    if-eq v4, v7, :cond_5

    iput-boolean v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Z

    invoke-virtual {p0, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_a
    const-string/jumbo v0, "No current ad found."

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wrapper is null; initialized state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/applovin/a/a/j;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const-string/jumbo v0, "Wrapper ID is null"

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/adview/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->b:Lcom/applovin/adview/b;

    invoke-virtual {v0}, Lcom/applovin/adview/b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    invoke-virtual {v0}, Lcom/applovin/a/a/b;->pause()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    invoke-virtual {v0}, Lcom/applovin/a/a/b;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/c/l;

    const-string/jumbo v2, "AppLovinInterstitialActivity"

    const-string/jumbo v3, "Unable to destroy video view"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "com.applovin.interstitial.last_video_position"

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    invoke-virtual {v2}, Lcom/applovin/a/a/b;->getCurrentPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "com.applovin.interstitial.should_resume_video"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    invoke-virtual {v0}, Lcom/applovin/a/a/b;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/j;->a(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->c:Lcom/applovin/a/a/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/j;->a(Z)V

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->x()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "com.applovin.interstitial.should_resume_video"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    invoke-virtual {v1}, Lcom/applovin/a/a/b;->getDuration()I

    move-result v1

    const-string/jumbo v2, "com.applovin.interstitial.last_video_position"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v1, v0

    invoke-direct {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->p()V

    iget-object v2, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    invoke-virtual {v2, v0}, Lcom/applovin/a/a/b;->seekTo(I)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->x:Lcom/applovin/a/a/b;

    invoke-virtual {v0}, Lcom/applovin/a/a/b;->start()V

    invoke-direct {p0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->f:Lcom/applovin/a/b/bg;

    invoke-virtual {v0}, Lcom/applovin/a/b/bg;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->e:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinInterstitialActivity"

    const-string/jumbo v2, "Fading in close button due to app resume."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->A:Lcom/applovin/a/a/ak;

    :goto_0
    invoke-direct {p0, v2, v3, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(JLcom/applovin/a/a/ak;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->y:Lcom/applovin/a/a/ak;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->dismiss()V

    goto :goto_1
.end method
