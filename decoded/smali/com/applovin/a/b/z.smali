.class Lcom/applovin/a/b/z;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/a/b/e;

.field private final b:Lcom/applovin/a/b/dk;

.field private c:Landroid/app/Activity;

.field private d:Lcom/applovin/c/c;

.field private e:Lcom/applovin/c/j;

.field private f:Lcom/applovin/c/b;

.field private g:Lcom/applovin/c/e;

.field private final h:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/e;Lcom/applovin/a/b/dk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "IncentivizedAdLauncher"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/a/b/z;->h:Ljava/util/Timer;

    iput-object p1, p0, Lcom/applovin/a/b/z;->a:Lcom/applovin/a/b/e;

    iput-object p2, p0, Lcom/applovin/a/b/z;->b:Lcom/applovin/a/b/dk;

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/z;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/z;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/a/b/z;)Lcom/applovin/a/b/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/z;->a:Lcom/applovin/a/b/e;

    return-object v0
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/applovin/a/b/z;->b:Lcom/applovin/a/b/dk;

    iget-object v1, p0, Lcom/applovin/a/b/z;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/applovin/a/b/z;->g:Lcom/applovin/c/e;

    iget-object v3, p0, Lcom/applovin/a/b/z;->e:Lcom/applovin/c/j;

    iget-object v4, p0, Lcom/applovin/a/b/z;->d:Lcom/applovin/c/c;

    iget-object v5, p0, Lcom/applovin/a/b/z;->f:Lcom/applovin/c/b;

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/a/b/dk;->b(Landroid/app/Activity;Lcom/applovin/c/e;Lcom/applovin/c/j;Lcom/applovin/c/c;Lcom/applovin/c/b;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/a/b/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/a/b/z;->b()V

    return-void
.end method

.method static synthetic d(Lcom/applovin/a/b/z;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/z;->h:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/a/b/z;)Lcom/applovin/c/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/z;->g:Lcom/applovin/c/e;

    return-object v0
.end method

.method static synthetic f(Lcom/applovin/a/b/z;)Lcom/applovin/a/b/dk;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/z;->b:Lcom/applovin/a/b/dk;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/z;->c:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/a/b/aa;

    invoke-direct {v1, p0}, Lcom/applovin/a/b/aa;-><init>(Lcom/applovin/a/b/z;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/z;->c:Landroid/app/Activity;

    return-void
.end method

.method public a(Lcom/applovin/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/z;->f:Lcom/applovin/c/b;

    return-void
.end method

.method public a(Lcom/applovin/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/z;->d:Lcom/applovin/c/c;

    return-void
.end method

.method public a(Lcom/applovin/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/z;->g:Lcom/applovin/c/e;

    return-void
.end method

.method public a(Lcom/applovin/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/z;->e:Lcom/applovin/c/j;

    return-void
.end method
