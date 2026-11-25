.class public Lcom/applovin/a/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/adview/e;


# static fields
.field public static volatile a:Z

.field public static volatile b:Z

.field private static final c:Ljava/util/Map;

.field private static volatile n:Z


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lcom/applovin/a/b/e;

.field private final f:Landroid/app/Activity;

.field private volatile g:Lcom/applovin/c/d;

.field private volatile h:Lcom/applovin/c/c;

.field private volatile i:Lcom/applovin/c/j;

.field private volatile j:Lcom/applovin/c/b;

.field private volatile k:Lcom/applovin/a/b/a;

.field private volatile l:Lcom/applovin/a/b/b;

.field private volatile m:Lcom/applovin/a/a/am;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/applovin/a/a/j;->c:Ljava/util/Map;

    sput-boolean v1, Lcom/applovin/a/a/j;->a:Z

    sput-boolean v1, Lcom/applovin/a/a/j;->b:Z

    return-void
.end method

.method constructor <init>(Lcom/applovin/c/n;Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    check-cast p1, Lcom/applovin/a/b/e;

    iput-object p1, p0, Lcom/applovin/a/a/j;->e:Lcom/applovin/a/b/e;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/a/j;->d:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/applovin/a/a/j;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/applovin/a/a/j;->b:Z

    iput-object p2, p0, Lcom/applovin/a/a/j;->f:Landroid/app/Activity;

    sget-object v0, Lcom/applovin/a/a/j;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/a/a/j;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/applovin/a/a/j;
    .locals 1

    sget-object v0, Lcom/applovin/a/a/j;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/a/j;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/j;->f:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/a/a/n;

    invoke-direct {v1, p0, p1}, Lcom/applovin/a/a/n;-><init>(Lcom/applovin/a/a/j;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/a/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/a/a/j;->m()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/a/j;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/a/j;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/a/j;Lcom/applovin/c/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/a/j;->b(Lcom/applovin/c/a;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/a/a/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/a/a/j;->l()V

    return-void
.end method

.method private b(Lcom/applovin/c/a;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/j;->f:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/a/a/m;

    invoke-direct {v1, p0, p1}, Lcom/applovin/a/a/m;-><init>(Lcom/applovin/a/a/j;Lcom/applovin/c/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/a/a/j;)Lcom/applovin/c/d;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/j;->g:Lcom/applovin/c/d;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/a/a/j;)Lcom/applovin/a/a/am;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/j;->m:Lcom/applovin/a/a/am;

    return-object v0
.end method

.method private l()V
    .locals 3

    new-instance v0, Lcom/applovin/a/a/an;

    iget-object v1, p0, Lcom/applovin/a/a/j;->e:Lcom/applovin/a/b/e;

    iget-object v2, p0, Lcom/applovin/a/a/j;->f:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/applovin/a/a/an;-><init>(Lcom/applovin/c/n;Landroid/app/Activity;)V

    invoke-virtual {v0, p0}, Lcom/applovin/a/a/an;->a(Lcom/applovin/a/a/j;)V

    iput-object v0, p0, Lcom/applovin/a/a/j;->m:Lcom/applovin/a/a/am;

    iget-object v1, p0, Lcom/applovin/a/a/j;->k:Lcom/applovin/a/b/a;

    invoke-virtual {v0, v1}, Lcom/applovin/a/a/an;->a(Lcom/applovin/c/a;)V

    return-void
.end method

.method private m()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/applovin/a/a/j;->f:Landroid/app/Activity;

    const-class v2, Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.applovin.interstitial.wrapper_id"

    iget-object v2, p0, Lcom/applovin/a/a/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sput-object p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->a:Lcom/applovin/a/a/j;

    iget-object v1, p0, Lcom/applovin/a/a/j;->f:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/a/a/j;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/a/j;->e:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->d()Lcom/applovin/c/f;

    move-result-object v0

    sget-object v1, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    new-instance v2, Lcom/applovin/a/a/k;

    invoke-direct {v2, p0}, Lcom/applovin/a/a/k;-><init>(Lcom/applovin/a/a/j;)V

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/f;->a(Lcom/applovin/c/g;Lcom/applovin/c/d;)V

    return-void
.end method

.method public a(Lcom/applovin/a/a/am;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/j;->m:Lcom/applovin/a/a/am;

    return-void
.end method

.method public a(Lcom/applovin/c/a;)V
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/a/a/j;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/a/j;->e:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "AppLovinInterstitialAdDialog"

    const-string/jumbo v2, "Attempted to show an interstitial while one is already displayed; ignoring."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/applovin/a/b/a;

    iput-object p1, p0, Lcom/applovin/a/a/j;->k:Lcom/applovin/a/b/a;

    iget-object v0, p0, Lcom/applovin/a/a/j;->k:Lcom/applovin/a/b/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/a/a/j;->k:Lcom/applovin/a/b/a;

    invoke-virtual {v0}, Lcom/applovin/a/b/a;->d()Lcom/applovin/a/b/b;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/applovin/a/a/j;->l:Lcom/applovin/a/b/b;

    iget-object v0, p0, Lcom/applovin/a/a/j;->k:Lcom/applovin/a/b/a;

    invoke-virtual {v0}, Lcom/applovin/a/b/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/c/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/a/a/j;->e:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->m()Lcom/applovin/a/b/dj;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/a/j;->k:Lcom/applovin/a/b/a;

    invoke-virtual {v1}, Lcom/applovin/a/b/a;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/a/a/j;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/a/b/dj;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const-class v0, Lcom/applovin/adview/AppLovinInterstitialActivity;

    iget-object v1, p0, Lcom/applovin/a/a/j;->f:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/a/b/cy;->a(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v1

    iget-object v0, p0, Lcom/applovin/a/a/j;->l:Lcom/applovin/a/b/b;

    sget-object v2, Lcom/applovin/a/b/b;->c:Lcom/applovin/a/b/b;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/applovin/a/a/j;->l:Lcom/applovin/a/b/b;

    sget-object v2, Lcom/applovin/a/b/b;->b:Lcom/applovin/a/b/b;

    if-ne v0, v2, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_2
    iget-object v2, p0, Lcom/applovin/a/a/j;->f:Landroid/app/Activity;

    new-instance v3, Lcom/applovin/a/a/l;

    invoke-direct {v3, p0, v1, v0}, Lcom/applovin/a/a/l;-><init>(Lcom/applovin/a/a/j;ZZ)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/applovin/a/b/b;->a:Lcom/applovin/a/b/b;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(Lcom/applovin/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/j;->j:Lcom/applovin/c/b;

    return-void
.end method

.method public a(Lcom/applovin/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/j;->h:Lcom/applovin/c/c;

    return-void
.end method

.method public a(Lcom/applovin/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/j;->g:Lcom/applovin/c/d;

    return-void
.end method

.method public a(Lcom/applovin/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/a/j;->i:Lcom/applovin/c/j;

    return-void
.end method

.method public a(Z)V
    .locals 0

    sput-boolean p1, Lcom/applovin/a/a/j;->n:Z

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/j;->e:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->d()Lcom/applovin/c/f;

    move-result-object v0

    sget-object v1, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    invoke-interface {v0, v1}, Lcom/applovin/c/f;->a(Lcom/applovin/c/g;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/a/j;->m:Lcom/applovin/a/a/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/a/j;->f:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/a/a/o;

    invoke-direct {v1, p0}, Lcom/applovin/a/a/o;-><init>(Lcom/applovin/a/a/j;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public d()Lcom/applovin/c/n;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/j;->e:Lcom/applovin/a/b/e;

    return-object v0
.end method

.method public e()Lcom/applovin/c/a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/j;->k:Lcom/applovin/a/b/a;

    return-object v0
.end method

.method public f()Lcom/applovin/c/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/j;->i:Lcom/applovin/c/j;

    return-object v0
.end method

.method public g()Lcom/applovin/c/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/j;->h:Lcom/applovin/c/c;

    return-object v0
.end method

.method public h()Lcom/applovin/c/b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/j;->j:Lcom/applovin/c/b;

    return-object v0
.end method

.method public i()Z
    .locals 1

    sget-boolean v0, Lcom/applovin/a/a/j;->n:Z

    return v0
.end method

.method public j()Lcom/applovin/a/b/b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/a/j;->l:Lcom/applovin/a/b/b;

    return-object v0
.end method

.method public k()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/applovin/a/a/j;->a:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/applovin/a/a/j;->b:Z

    sget-object v0, Lcom/applovin/a/a/j;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/a/a/j;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
