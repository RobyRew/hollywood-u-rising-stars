.class public Lcom/applovin/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/f;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/applovin/a/b/e;

.field private final d:Lcom/applovin/c/l;

.field private e:Landroid/os/Handler;

.field private final f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "/adservice/no_op"

    sput-object v0, Lcom/applovin/a/b/d;->a:Ljava/lang/String;

    const-string/jumbo v0, "/adservice/track_click_now"

    sput-object v0, Lcom/applovin/a/b/d;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/applovin/a/b/e;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-virtual {p1}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/d;->d:Lcom/applovin/c/l;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/a/b/d;->e:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/a/b/d;->f:Ljava/util/Map;

    invoke-static {}, Lcom/applovin/c/h;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/c/h;

    iget-object v2, p0, Lcom/applovin/a/b/d;->f:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/b/d;->f:Ljava/util/Map;

    sget-object v1, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/c/g;->a:Lcom/applovin/c/g;

    new-instance v2, Lcom/applovin/a/b/ct;

    sget-object v3, Lcom/applovin/c/g;->a:Lcom/applovin/c/g;

    invoke-direct {v2, v3, v4}, Lcom/applovin/a/b/ct;-><init>(Lcom/applovin/c/g;Lcom/applovin/a/b/cp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/a/b/d;->f:Ljava/util/Map;

    sget-object v1, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/c/g;->d:Lcom/applovin/c/g;

    new-instance v2, Lcom/applovin/a/b/ct;

    sget-object v3, Lcom/applovin/c/g;->d:Lcom/applovin/c/g;

    invoke-direct {v2, v3, v4}, Lcom/applovin/a/b/ct;-><init>(Lcom/applovin/c/g;Lcom/applovin/a/b/cp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/a/b/d;->f:Ljava/util/Map;

    sget-object v1, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    new-instance v2, Lcom/applovin/a/b/ct;

    sget-object v3, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    invoke-direct {v2, v3, v4}, Lcom/applovin/a/b/ct;-><init>(Lcom/applovin/c/g;Lcom/applovin/a/b/cp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/a/b/d;->f:Ljava/util/Map;

    sget-object v1, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/c/g;->b:Lcom/applovin/c/g;

    new-instance v2, Lcom/applovin/a/b/ct;

    sget-object v3, Lcom/applovin/c/g;->b:Lcom/applovin/c/g;

    invoke-direct {v2, v3, v4}, Lcom/applovin/a/b/ct;-><init>(Lcom/applovin/c/g;Lcom/applovin/a/b/cp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/a/b/d;->f:Ljava/util/Map;

    sget-object v1, Lcom/applovin/c/h;->b:Lcom/applovin/c/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    new-instance v2, Lcom/applovin/a/b/ct;

    sget-object v3, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    invoke-direct {v2, v3, v4}, Lcom/applovin/a/b/ct;-><init>(Lcom/applovin/c/g;Lcom/applovin/a/b/cp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/d;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Lcom/applovin/a/b/a;Lcom/applovin/adview/b;Lcom/applovin/a/a/a;)V
    .locals 2

    invoke-virtual {p4}, Lcom/applovin/a/a/a;->h()V

    invoke-virtual {p0, p2}, Lcom/applovin/a/b/d;->a(Lcom/applovin/c/a;)V

    invoke-virtual {p3}, Lcom/applovin/adview/b;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-static {v0, p1, v1}, Lcom/applovin/c/p;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/applovin/c/n;)V

    invoke-virtual {p4}, Lcom/applovin/a/a/a;->j()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/d;Landroid/net/Uri;Lcom/applovin/a/b/a;Lcom/applovin/adview/b;Lcom/applovin/a/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/a/b/d;->a(Landroid/net/Uri;Lcom/applovin/a/b/a;Lcom/applovin/adview/b;Lcom/applovin/a/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/d;Lcom/applovin/c/g;Lcom/applovin/c/h;Lcom/applovin/c/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/a/b/d;->b(Lcom/applovin/c/g;Lcom/applovin/c/h;Lcom/applovin/c/d;)V

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->h()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/applovin/a/b/d;Lcom/applovin/c/g;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/applovin/a/b/d;->b(Lcom/applovin/c/g;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/applovin/c/g;Lcom/applovin/c/h;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v3, Lcom/applovin/a/b/bb;->G:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v3}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v0, Lcom/applovin/c/h;->b:Lcom/applovin/c/h;

    invoke-virtual {p2, v0}, Lcom/applovin/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v3, Lcom/applovin/a/b/bb;->aD:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v3}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v3, Lcom/applovin/a/b/bb;->K:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v3}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v3, Lcom/applovin/a/b/bb;->aE:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v3}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v3, Lcom/applovin/a/b/bb;->J:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v3}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/applovin/c/g;->c:Lcom/applovin/c/g;

    invoke-virtual {v3}, Lcom/applovin/c/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method static synthetic b(Lcom/applovin/a/b/d;Lcom/applovin/c/g;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/applovin/a/b/d;->c(Lcom/applovin/c/g;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/applovin/a/b/d;)Lcom/applovin/c/l;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/d;->d:Lcom/applovin/c/l;

    return-object v0
.end method

.method private b(Lcom/applovin/c/g;Lcom/applovin/c/h;Lcom/applovin/c/d;)V
    .locals 6

    new-instance v1, Lcom/applovin/a/b/bf;

    invoke-direct {v1, p1, p2}, Lcom/applovin/a/b/bf;-><init>(Lcom/applovin/c/g;Lcom/applovin/c/h;)V

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->n()Lcom/applovin/a/b/aj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/aj;->b(Lcom/applovin/a/b/bf;)Lcom/applovin/a/b/ah;

    move-result-object v0

    check-cast v0, Lcom/applovin/c/a;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/applovin/a/b/d;->d:Lcom/applovin/c/l;

    const-string/jumbo v3, "AppLovinAdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Using pre-loaded ad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/applovin/c/d;->adReceived(Lcom/applovin/c/a;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->n()Lcom/applovin/a/b/aj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/aj;->f(Lcom/applovin/a/b/bf;)V

    return-void

    :cond_0
    new-instance v0, Lcom/applovin/a/b/bs;

    iget-object v2, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-direct {v0, p1, p2, p3, v2}, Lcom/applovin/a/b/bs;-><init>(Lcom/applovin/c/g;Lcom/applovin/c/h;Lcom/applovin/c/d;Lcom/applovin/a/b/e;)V

    iget-object v2, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-virtual {v2}, Lcom/applovin/a/b/e;->k()Lcom/applovin/a/b/bw;

    move-result-object v2

    sget-object v3, Lcom/applovin/a/b/bx;->a:Lcom/applovin/a/b/bx;

    invoke-virtual {v2, v0, v3}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;)V

    goto :goto_0
.end method

.method private b(Lcom/applovin/c/g;)Z
    .locals 2

    sget-object v0, Lcom/applovin/c/g;->a:Lcom/applovin/c/g;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->z:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/applovin/c/g;->d:Lcom/applovin/c/g;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->B:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/c/g;->b:Lcom/applovin/c/g;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->D:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/applovin/c/g;)J
    .locals 2

    sget-object v0, Lcom/applovin/c/g;->a:Lcom/applovin/c/g;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->A:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/applovin/c/g;->d:Lcom/applovin/c/g;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->C:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/c/g;->b:Lcom/applovin/c/g;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->E:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/applovin/a/b/d;)Lcom/applovin/a/b/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/a/b/d;Lcom/applovin/c/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/b/d;->d(Lcom/applovin/c/g;)V

    return-void
.end method

.method static synthetic d(Lcom/applovin/a/b/d;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/d;->f:Ljava/util/Map;

    return-object v0
.end method

.method private d(Lcom/applovin/c/g;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/applovin/a/b/d;->c(Lcom/applovin/c/g;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/applovin/a/b/cu;

    invoke-direct {v2, p0, p1}, Lcom/applovin/a/b/cu;-><init>(Lcom/applovin/a/b/d;Lcom/applovin/c/g;)V

    iget-object v3, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-virtual {v3}, Lcom/applovin/a/b/e;->k()Lcom/applovin/a/b/bw;

    move-result-object v3

    sget-object v4, Lcom/applovin/a/b/bx;->a:Lcom/applovin/a/b/bx;

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x2

    add-long/2addr v0, v8

    mul-long/2addr v0, v6

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;J)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/applovin/a/b/d;)Z
    .locals 1

    invoke-direct {p0}, Lcom/applovin/a/b/d;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/applovin/c/a;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/applovin/a/b/a;

    iget-object v0, p0, Lcom/applovin/a/b/d;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/a/b/a;->c()Lcom/applovin/c/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/a/b/a;->b()Lcom/applovin/c/g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/b/ct;

    iget-object v1, v0, Lcom/applovin/a/b/ct;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v0, Lcom/applovin/a/b/ct;->c:Lcom/applovin/c/a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/applovin/a/b/ct;->d:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/applovin/c/a;Lcom/applovin/adview/b;Lcom/applovin/a/a/a;Landroid/net/Uri;)V
    .locals 3

    check-cast p1, Lcom/applovin/a/b/a;

    invoke-virtual {p1}, Lcom/applovin/a/b/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/c/p;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->s()Lcom/applovin/a/b/ar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/applovin/a/b/ar;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/applovin/a/b/d;->a(Landroid/net/Uri;Lcom/applovin/a/b/a;Lcom/applovin/adview/b;Lcom/applovin/a/a/a;)V

    return-void
.end method

.method public a(Lcom/applovin/c/g;Lcom/applovin/c/d;)V
    .locals 1

    sget-object v0, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-virtual {p0, p1, v0, p2}, Lcom/applovin/a/b/d;->a(Lcom/applovin/c/g;Lcom/applovin/c/h;Lcom/applovin/c/d;)V

    return-void
.end method

.method public a(Lcom/applovin/c/g;Lcom/applovin/c/h;Lcom/applovin/c/d;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No ad size specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No callback specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No ad type specificed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lcom/applovin/c/g;->a:Lcom/applovin/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/applovin/c/g;->d:Lcom/applovin/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/applovin/c/g;->b:Lcom/applovin/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v3, "AppLovinAdService"

    const-string/jumbo v4, "Banners, MRecs and Leaderboards are deprecated and will be removed in a future SDK version!"

    invoke-interface {v0, v3, v4}, Lcom/applovin/c/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/applovin/a/b/d;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/b/ct;

    iget-object v3, v0, Lcom/applovin/a/b/ct;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/applovin/a/b/ct;->d:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    :goto_0
    iget-object v4, v0, Lcom/applovin/a/b/ct;->c:Lcom/applovin/c/a;

    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    iget-object v0, v0, Lcom/applovin/a/b/ct;->c:Lcom/applovin/c/a;

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    invoke-interface {p3, v0}, Lcom/applovin/c/d;->adReceived(Lcom/applovin/c/a;)V

    :cond_5
    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/applovin/a/b/d;->d:Lcom/applovin/c/l;

    const-string/jumbo v4, "AppLovinAdService"

    const-string/jumbo v5, "Loading next ad..."

    invoke-interface {v2, v4, v5}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/applovin/a/b/ct;->a(Lcom/applovin/a/b/ct;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v0, Lcom/applovin/a/b/ct;->e:Z

    if-nez v2, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/applovin/a/b/ct;->e:Z

    new-instance v2, Lcom/applovin/a/b/cs;

    iget-object v0, p0, Lcom/applovin/a/b/d;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/b/ct;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lcom/applovin/a/b/cs;-><init>(Lcom/applovin/a/b/d;Lcom/applovin/a/b/ct;Lcom/applovin/a/b/cp;)V

    invoke-direct {p0, p1, p2}, Lcom/applovin/a/b/d;->a(Lcom/applovin/c/g;Lcom/applovin/c/h;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->n()Lcom/applovin/a/b/aj;

    move-result-object v0

    new-instance v4, Lcom/applovin/a/b/bf;

    invoke-direct {v4, p1, p2}, Lcom/applovin/a/b/bf;-><init>(Lcom/applovin/c/g;Lcom/applovin/c/h;)V

    invoke-virtual {v0, v4, v2}, Lcom/applovin/a/b/aj;->a(Lcom/applovin/a/b/bf;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/applovin/a/b/d;->d:Lcom/applovin/c/l;

    const-string/jumbo v2, "AppLovinAdService"

    const-string/jumbo v4, "Attaching load listener to initial preload task..."

    invoke-interface {v0, v2, v4}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/applovin/a/b/d;->d:Lcom/applovin/c/l;

    const-string/jumbo v4, "AppLovinAdService"

    const-string/jumbo v5, "Skipped attach of initial preload callback."

    invoke-interface {v0, v4, v5}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v2}, Lcom/applovin/a/b/d;->b(Lcom/applovin/c/g;Lcom/applovin/c/h;Lcom/applovin/c/d;)V

    move-object v0, v1

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/applovin/a/b/d;->d:Lcom/applovin/c/l;

    const-string/jumbo v4, "AppLovinAdService"

    const-string/jumbo v5, "Task merge not necessary."

    invoke-interface {v0, v4, v5}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v2}, Lcom/applovin/a/b/d;->b(Lcom/applovin/c/g;Lcom/applovin/c/h;Lcom/applovin/c/d;)V

    :cond_a
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/applovin/c/i;Lcom/applovin/c/g;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/d;->f:Ljava/util/Map;

    sget-object v1, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/b/ct;

    iget-object v1, v0, Lcom/applovin/a/b/ct;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/applovin/a/b/ct;->b(Lcom/applovin/a/b/ct;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/a/b/d;->d:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinAdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removed update listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/applovin/c/g;)Z
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->n()Lcom/applovin/a/b/aj;

    move-result-object v0

    new-instance v1, Lcom/applovin/a/b/bf;

    sget-object v2, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-direct {v1, p1, v2}, Lcom/applovin/a/b/bf;-><init>(Lcom/applovin/c/g;Lcom/applovin/c/h;)V

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/aj;->e(Lcom/applovin/a/b/bf;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/applovin/c/a;Lcom/applovin/adview/b;Lcom/applovin/a/a/a;Landroid/net/Uri;)V
    .locals 12

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v4, p1

    check-cast v4, Lcom/applovin/a/b/a;

    iget-object v0, p0, Lcom/applovin/a/b/d;->d:Lcom/applovin/c/l;

    const-string/jumbo v1, "AppLovinAdService"

    const-string/jumbo v2, "Tracking foreground click on an ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->bp:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->bq:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->br:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->p()Lcom/applovin/a/b/h;

    move-result-object v9

    check-cast p1, Lcom/applovin/a/b/a;

    invoke-virtual {p1}, Lcom/applovin/a/b/a;->o()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-instance v0, Lcom/applovin/a/b/cp;

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/a/b/cp;-><init>(Lcom/applovin/a/b/d;Lcom/applovin/a/a/a;Landroid/net/Uri;Lcom/applovin/a/b/a;Lcom/applovin/adview/b;)V

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move v4, v7

    move v5, v8

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/applovin/a/b/h;->a(Ljava/lang/String;Ljava/util/Map;IIILcom/applovin/c/m;)V

    return-void
.end method

.method public b(Lcom/applovin/c/i;Lcom/applovin/c/g;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No ad listener specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/d;->f:Ljava/util/Map;

    sget-object v1, Lcom/applovin/c/h;->a:Lcom/applovin/c/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/b/ct;

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/applovin/a/b/ct;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {v0}, Lcom/applovin/a/b/ct;->b(Lcom/applovin/a/b/ct;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/applovin/a/b/ct;->b(Lcom/applovin/a/b/ct;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/applovin/a/b/d;->d:Lcom/applovin/c/l;

    const-string/jumbo v3, "AppLovinAdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Added update listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/applovin/a/b/cu;

    invoke-direct {v0, p0, p2}, Lcom/applovin/a/b/cu;-><init>(Lcom/applovin/a/b/d;Lcom/applovin/c/g;)V

    iget-object v1, p0, Lcom/applovin/a/b/d;->c:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->k()Lcom/applovin/a/b/bw;

    move-result-object v1

    sget-object v2, Lcom/applovin/a/b/bx;->a:Lcom/applovin/a/b/bx;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
