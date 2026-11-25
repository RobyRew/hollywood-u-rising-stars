.class public Lcom/applovin/a/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/c/k;


# instance fields
.field private final a:Lcom/applovin/a/b/e;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/applovin/c/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/applovin/a/b/e;

    iput-object v0, p0, Lcom/applovin/a/b/f;->a:Lcom/applovin/a/b/e;

    check-cast p1, Lcom/applovin/a/b/e;

    sget-object v0, Lcom/applovin/a/b/bb;->bi:Lcom/applovin/a/b/bd;

    invoke-virtual {p1, v0}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/a/b/f;->b:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/applovin/a/b/ax;Lcom/applovin/a/b/dd;)Landroid/net/Uri;
    .locals 8

    iget-object v0, p0, Lcom/applovin/a/b/f;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->t()Lcom/applovin/a/b/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/dc;->a()Lcom/applovin/a/b/df;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/a/b/dc;->b()Lcom/applovin/a/b/de;

    move-result-object v2

    iget-object v0, p0, Lcom/applovin/a/b/f;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/applovin/a/b/ax;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-object v0, p0, Lcom/applovin/a/b/f;->a:Lcom/applovin/a/b/e;

    sget-object v4, Lcom/applovin/a/b/bb;->bh:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v4}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "event"

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/applovin/a/b/ax;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "ts"

    invoke-virtual {p1}, Lcom/applovin/a/b/ax;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "platform"

    const-string/jumbo v5, "Android"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "model"

    iget-object v5, v1, Lcom/applovin/a/b/df;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "package_name"

    iget-object v5, v2, Lcom/applovin/a/b/de;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "sdk_key"

    iget-object v5, p0, Lcom/applovin/a/b/f;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v5}, Lcom/applovin/a/b/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "idfa"

    iget-object v5, p2, Lcom/applovin/a/b/dd;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "dnt"

    iget-boolean v5, p2, Lcom/applovin/a/b/dd;->a:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "ia"

    iget-wide v6, v2, Lcom/applovin/a/b/de;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "api_did"

    iget-object v0, p0, Lcom/applovin/a/b/f;->a:Lcom/applovin/a/b/e;

    sget-object v5, Lcom/applovin/a/b/bb;->c:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v5}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "brand"

    iget-object v4, v1, Lcom/applovin/a/b/df;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "model"

    iget-object v4, v1, Lcom/applovin/a/b/df;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "revision"

    iget-object v4, v1, Lcom/applovin/a/b/df;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "sdk_version"

    const-string/jumbo v4, "6.1.4"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "os"

    iget-object v1, v1, Lcom/applovin/a/b/df;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    if-nez v3, :cond_0

    const-string/jumbo v1, "sub_event"

    invoke-virtual {p1}, Lcom/applovin/a/b/ax;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "postinstall"

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/applovin/a/b/f;Lcom/applovin/a/b/ax;Lcom/applovin/a/b/dd;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/applovin/a/b/f;->a(Lcom/applovin/a/b/ax;Lcom/applovin/a/b/dd;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/a/b/f;)Lcom/applovin/a/b/e;
    .locals 1

    iget-object v0, p0, Lcom/applovin/a/b/f;->a:Lcom/applovin/a/b/e;

    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/f;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v5, "EventServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected class type in trackEvent(); all keys and values passed as parameters must be String. Encountered "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; will use toString() value instead, which may be unexpected..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/applovin/c/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private a(Lcom/applovin/a/b/ax;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/f;->a:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->bj:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/f;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->f()Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "EventServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tracking event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/a/b/dg;

    invoke-direct {v0, p0, p1}, Lcom/applovin/a/b/dg;-><init>(Lcom/applovin/a/b/f;Lcom/applovin/a/b/ax;)V

    invoke-direct {p0, v0}, Lcom/applovin/a/b/f;->a(Lcom/applovin/a/b/bp;)V

    goto :goto_0
.end method

.method private a(Lcom/applovin/a/b/bp;)V
    .locals 3

    new-instance v0, Lcom/applovin/a/b/bo;

    iget-object v1, p0, Lcom/applovin/a/b/f;->a:Lcom/applovin/a/b/e;

    invoke-direct {v0, v1, p1}, Lcom/applovin/a/b/bo;-><init>(Lcom/applovin/a/b/e;Lcom/applovin/a/b/bp;)V

    iget-object v1, p0, Lcom/applovin/a/b/f;->a:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->k()Lcom/applovin/a/b/bw;

    move-result-object v1

    sget-object v2, Lcom/applovin/a/b/bx;->b:Lcom/applovin/a/b/bx;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/applovin/a/b/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7

    new-instance v1, Lcom/applovin/a/b/ax;

    invoke-direct {p0, p2}, Lcom/applovin/a/b/f;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/a/b/co;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/applovin/a/b/ax;-><init>(Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/applovin/a/b/f;->a(Lcom/applovin/a/b/ax;)V

    return-void
.end method
