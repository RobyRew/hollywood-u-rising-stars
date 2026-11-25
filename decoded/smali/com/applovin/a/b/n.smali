.class Lcom/applovin/a/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/b;
.implements Lcom/applovin/c/c;
.implements Lcom/applovin/c/e;
.implements Lcom/applovin/c/j;


# instance fields
.field final synthetic a:Lcom/applovin/a/b/dk;

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/applovin/c/c;

.field private final d:Lcom/applovin/c/b;

.field private final e:Lcom/applovin/c/j;

.field private final f:Lcom/applovin/c/e;


# direct methods
.method private constructor <init>(Lcom/applovin/a/b/dk;Landroid/app/Activity;Lcom/applovin/c/e;Lcom/applovin/c/j;Lcom/applovin/c/c;Lcom/applovin/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/applovin/a/b/n;->c:Lcom/applovin/c/c;

    iput-object p6, p0, Lcom/applovin/a/b/n;->d:Lcom/applovin/c/b;

    iput-object p4, p0, Lcom/applovin/a/b/n;->e:Lcom/applovin/c/j;

    iput-object p3, p0, Lcom/applovin/a/b/n;->f:Lcom/applovin/c/e;

    iput-object p2, p0, Lcom/applovin/a/b/n;->b:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/a/b/dk;Landroid/app/Activity;Lcom/applovin/c/e;Lcom/applovin/c/j;Lcom/applovin/c/c;Lcom/applovin/c/b;Lcom/applovin/a/b/j;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/applovin/a/b/n;-><init>(Lcom/applovin/a/b/dk;Landroid/app/Activity;Lcom/applovin/c/e;Lcom/applovin/c/j;Lcom/applovin/c/c;Lcom/applovin/c/b;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/n;)Lcom/applovin/c/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/n;->f:Lcom/applovin/c/e;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/a/b/n;)Lcom/applovin/c/c;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/n;->c:Lcom/applovin/c/c;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/a/b/n;)Lcom/applovin/c/b;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/n;->d:Lcom/applovin/c/b;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/a/b/n;)Lcom/applovin/c/j;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/n;->e:Lcom/applovin/c/j;

    return-object v0
.end method


# virtual methods
.method public adClicked(Lcom/applovin/c/a;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/n;->d:Lcom/applovin/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->c(Lcom/applovin/a/b/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/q;

    invoke-direct {v1, p0, p1}, Lcom/applovin/a/b/q;-><init>(Lcom/applovin/a/b/n;Lcom/applovin/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public adDisplayed(Lcom/applovin/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/n;->c:Lcom/applovin/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/n;->c:Lcom/applovin/c/c;

    invoke-interface {v0, p1}, Lcom/applovin/c/c;->adDisplayed(Lcom/applovin/c/a;)V

    :cond_0
    return-void
.end method

.method public adHidden(Lcom/applovin/c/a;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-virtual {v0}, Lcom/applovin/a/b/dk;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->a(Lcom/applovin/a/b/dk;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    iget-object v1, p0, Lcom/applovin/a/b/n;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/applovin/a/b/dk;->a(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/a/b/n;->c:Lcom/applovin/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->c(Lcom/applovin/a/b/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/p;

    invoke-direct {v1, p0, p1}, Lcom/applovin/a/b/p;-><init>(Lcom/applovin/a/b/n;Lcom/applovin/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v0, Lcom/applovin/a/b/cf;

    iget-object v1, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v1}, Lcom/applovin/a/b/dk;->d(Lcom/applovin/a/b/dk;)Lcom/applovin/a/b/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/applovin/a/b/cf;-><init>(Lcom/applovin/a/b/e;Lcom/applovin/c/a;)V

    iget-object v1, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v1}, Lcom/applovin/a/b/dk;->d(Lcom/applovin/a/b/dk;)Lcom/applovin/a/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->k()Lcom/applovin/a/b/bw;

    move-result-object v1

    sget-object v2, Lcom/applovin/a/b/bx;->b:Lcom/applovin/a/b/bx;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;)V

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/a/b/dk;->a(Lcom/applovin/a/b/dk;Lcom/applovin/a/b/a;)Lcom/applovin/a/b/a;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->b(Lcom/applovin/a/b/dk;)Lcom/applovin/a/b/cl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/cl;->a(Z)V

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->a(Lcom/applovin/a/b/dk;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "network_timeout"

    const/16 v0, -0x1f4

    :goto_1
    invoke-static {}, Lcom/applovin/a/b/aq;->a()Lcom/applovin/a/b/aq;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/applovin/a/b/aq;->a(Lcom/applovin/c/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v1}, Lcom/applovin/a/b/dk;->a(Lcom/applovin/a/b/dk;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    iget-object v3, p0, Lcom/applovin/a/b/n;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Lcom/applovin/a/b/dk;->a(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_2
    iget-object v1, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v1}, Lcom/applovin/a/b/dk;->c(Lcom/applovin/a/b/dk;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/applovin/a/b/o;

    invoke-direct {v2, p0, p1, v0}, Lcom/applovin/a/b/o;-><init>(Lcom/applovin/a/b/n;Lcom/applovin/c/a;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "user_closed_video"

    const/16 v0, -0x258

    goto :goto_1
.end method

.method public userDeclinedToViewAd(Lcom/applovin/c/a;)V
    .locals 0

    return-void
.end method

.method public userOverQuota(Lcom/applovin/c/a;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    const-string/jumbo v1, "quota_exceeded"

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/dk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/n;->f:Lcom/applovin/c/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->c(Lcom/applovin/a/b/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/a/b/u;-><init>(Lcom/applovin/a/b/n;Lcom/applovin/c/a;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public userRewardRejected(Lcom/applovin/c/a;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    const-string/jumbo v1, "rejected"

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/dk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/n;->f:Lcom/applovin/c/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->c(Lcom/applovin/a/b/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/v;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/a/b/v;-><init>(Lcom/applovin/a/b/n;Lcom/applovin/c/a;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public userRewardVerified(Lcom/applovin/c/a;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    const-string/jumbo v1, "accepted"

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/dk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/n;->f:Lcom/applovin/c/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->c(Lcom/applovin/a/b/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/t;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/a/b/t;-><init>(Lcom/applovin/a/b/n;Lcom/applovin/c/a;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/c/a;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    const-string/jumbo v1, "network_timeout"

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/dk;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/n;->f:Lcom/applovin/c/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->c(Lcom/applovin/a/b/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/w;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/a/b/w;-><init>(Lcom/applovin/a/b/n;Lcom/applovin/c/a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/c/a;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/n;->e:Lcom/applovin/c/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->c(Lcom/applovin/a/b/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/r;

    invoke-direct {v1, p0, p1}, Lcom/applovin/a/b/r;-><init>(Lcom/applovin/a/b/n;Lcom/applovin/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/c/a;DZ)V
    .locals 8

    iget-object v0, p0, Lcom/applovin/a/b/n;->e:Lcom/applovin/c/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0}, Lcom/applovin/a/b/dk;->c(Lcom/applovin/a/b/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/s;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/applovin/a/b/s;-><init>(Lcom/applovin/a/b/n;Lcom/applovin/c/a;DZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/n;->a:Lcom/applovin/a/b/dk;

    invoke-static {v0, p4}, Lcom/applovin/a/b/dk;->a(Lcom/applovin/a/b/dk;Z)Z

    return-void
.end method
