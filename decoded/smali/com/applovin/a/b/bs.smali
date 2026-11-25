.class Lcom/applovin/a/b/bs;
.super Lcom/applovin/a/b/ba;

# interfaces
.implements Lcom/applovin/a/b/cn;


# instance fields
.field private final a:Lcom/applovin/c/g;

.field private final b:Lcom/applovin/c/h;

.field private final c:Lcom/applovin/c/d;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/applovin/c/g;Lcom/applovin/c/h;Lcom/applovin/c/d;Lcom/applovin/a/b/e;)V
    .locals 1

    const-string/jumbo v0, "FetchNextAd"

    invoke-direct {p0, v0, p4}, Lcom/applovin/a/b/ba;-><init>(Ljava/lang/String;Lcom/applovin/a/b/e;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/a/b/bs;->d:Z

    iput-object p1, p0, Lcom/applovin/a/b/bs;->a:Lcom/applovin/c/g;

    iput-object p2, p0, Lcom/applovin/a/b/bs;->b:Lcom/applovin/c/h;

    iput-object p3, p0, Lcom/applovin/a/b/bs;->c:Lcom/applovin/c/d;

    return-void
.end method

.method private a(Lcom/applovin/a/b/bh;)V
    .locals 6

    const-string/jumbo v0, "ad_session_start"

    invoke-virtual {p1, v0}, Lcom/applovin/a/b/bh;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0xea60

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->x:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "ad_session_start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/applovin/a/b/bh;->b(Ljava/lang/String;J)V

    const-string/jumbo v0, "ad_imp_session"

    invoke-virtual {p1, v0}, Lcom/applovin/a/b/bh;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/bs;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/b/bs;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/a/b/bs;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/b/bs;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/bs;->g:Lcom/applovin/c/l;

    iget-object v1, p0, Lcom/applovin/a/b/bs;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to fetch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/a/b/bs;->a:Lcom/applovin/c/g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ad: server returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applovin/a/b/bs;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-static {p1, v0}, Lcom/applovin/a/b/db;->b(ILcom/applovin/a/b/e;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/b/bs;->g:Lcom/applovin/c/l;

    iget-object v2, p0, Lcom/applovin/a/b/bs;->e:Ljava/lang/String;

    const-string/jumbo v3, "Unable process a failure to recieve an ad"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/applovin/a/b/bs;->a(Lorg/json/JSONObject;)Lcom/applovin/a/b/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->k()Lcom/applovin/a/b/bw;

    move-result-object v1

    sget-object v2, Lcom/applovin/a/b/bx;->a:Lcom/applovin/a/b/bx;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/a/b/bw;->a(Lcom/applovin/a/b/ba;Lcom/applovin/a/b/bx;)V

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-static {p1, v0}, Lcom/applovin/a/b/db;->a(Lorg/json/JSONObject;Lcom/applovin/a/b/e;)V

    return-void
.end method

.method private d(Ljava/util/Map;)V
    .locals 4

    const-string/jumbo v0, "api_did"

    iget-object v1, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    sget-object v2, Lcom/applovin/a/b/bb;->c:Lcom/applovin/a/b/bd;

    invoke-virtual {v1, v2}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "sdk_key"

    iget-object v1, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "sdk_version"

    const-string/jumbo v1, "6.1.4"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->F:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "plugin_version"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v0, "accept"

    invoke-direct {p0}, Lcom/applovin/a/b/bs;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "v1"

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v2, p0, Lcom/applovin/a/b/bs;->h:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/applovin/a/b/cy;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "v2"

    const-class v1, Lcom/applovin/adview/AppLovinInterstitialActivity;

    iget-object v2, p0, Lcom/applovin/a/b/bs;->h:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/applovin/a/b/cy;->a(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "preloading"

    iget-boolean v1, p0, Lcom/applovin/a/b/bs;->d:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "size"

    iget-object v1, p0, Lcom/applovin/a/b/bs;->a:Lcom/applovin/c/g;

    invoke-virtual {v1}, Lcom/applovin/c/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "format"

    const-string/jumbo v1, "json"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->t()Lcom/applovin/a/b/dc;

    move-result-object v0

    const-string/jumbo v1, "ia"

    invoke-virtual {v0}, Lcom/applovin/a/b/dc;->b()Lcom/applovin/a/b/de;

    move-result-object v0

    iget-wide v2, v0, Lcom/applovin/a/b/de;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e(Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->N:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->l()Lcom/applovin/a/b/bh;

    move-result-object v0

    const-string/jumbo v1, "li"

    const-string/jumbo v2, "ad_imp"

    invoke-virtual {v0, v2}, Lcom/applovin/a/b/bh;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "si"

    const-string/jumbo v2, "ad_imp_session"

    invoke-virtual {v0, v2}, Lcom/applovin/a/b/bh;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private f(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->N:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->e()Lcom/applovin/c/q;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/b/cx;

    invoke-virtual {v0}, Lcom/applovin/a/b/cx;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "custom_size,launch_app"

    invoke-static {}, Lcom/applovin/a/b/cy;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/applovin/adview/AppLovinInterstitialActivity;

    iget-object v2, p0, Lcom/applovin/a/b/bs;->h:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/applovin/a/b/cy;->a(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private g(Ljava/util/Map;)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-static {v0}, Lcom/applovin/a/b/i;->a(Lcom/applovin/a/b/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/applovin/a/b/bs;->h(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-static {v1, v0}, Lcom/applovin/a/b/i;->a(Ljava/util/Map;Lcom/applovin/a/b/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v0, "network"

    iget-object v1, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-static {v1}, Lcom/applovin/a/b/db;->a(Lcom/applovin/a/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/applovin/a/b/bs;->j(Ljava/util/Map;)V

    const-string/jumbo v0, "vz"

    iget-object v1, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-static {v1, v2}, Lcom/applovin/a/b/co;->a(Ljava/lang/String;Lcom/applovin/a/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/applovin/a/b/bs;->g:Lcom/applovin/c/l;

    iget-object v3, p0, Lcom/applovin/a/b/bs;->e:Ljava/lang/String;

    const-string/jumbo v4, "Unable to populate device information"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private h(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->t()Lcom/applovin/a/b/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/dc;->a()Lcom/applovin/a/b/df;

    move-result-object v0

    const-string/jumbo v1, "brand"

    iget-object v2, v0, Lcom/applovin/a/b/df;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/a/b/co;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "carrier"

    iget-object v2, v0, Lcom/applovin/a/b/df;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/a/b/co;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "locale"

    iget-object v2, v0, Lcom/applovin/a/b/df;->h:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "model"

    iget-object v2, v0, Lcom/applovin/a/b/df;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/a/b/co;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "os"

    iget-object v2, v0, Lcom/applovin/a/b/df;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/a/b/co;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "platform"

    const-string/jumbo v2, "android"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "revision"

    iget-object v0, v0, Lcom/applovin/a/b/df;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/a/b/co;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/applovin/a/b/bs;->i(Ljava/util/Map;)V

    return-void
.end method

.method private i(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/a/b/cy;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    const-string/jumbo v1, "dx"

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "dy"

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private j(Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->t()Lcom/applovin/a/b/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/dc;->c()Lcom/applovin/a/b/dd;

    move-result-object v0

    iget-object v1, v0, Lcom/applovin/a/b/dd;->b:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/applovin/a/b/dd;->a:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->g()Lcom/applovin/a/b/be;

    move-result-object v0

    sget-object v3, Lcom/applovin/a/b/bb;->be:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v3}, Lcom/applovin/a/b/be;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/applovin/c/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "idfa"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v0, "dnt"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/applovin/a/b/ba;
    .locals 3

    new-instance v0, Lcom/applovin/a/b/cb;

    iget-object v1, p0, Lcom/applovin/a/b/bs;->c:Lcom/applovin/c/d;

    iget-object v2, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/a/b/cb;-><init>(Lorg/json/JSONObject;Lcom/applovin/c/d;Lcom/applovin/a/b/e;)V

    return-object v0
.end method

.method protected a(I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/a/b/bs;->c:Lcom/applovin/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bs;->c:Lcom/applovin/c/d;

    instance-of v0, v0, Lcom/applovin/a/b/dh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/a/b/bs;->c:Lcom/applovin/c/d;

    check-cast v0, Lcom/applovin/a/b/dh;

    new-instance v1, Lcom/applovin/a/b/bf;

    iget-object v2, p0, Lcom/applovin/a/b/bs;->a:Lcom/applovin/c/g;

    iget-object v3, p0, Lcom/applovin/a/b/bs;->b:Lcom/applovin/c/h;

    invoke-direct {v1, v2, v3}, Lcom/applovin/a/b/bf;-><init>(Lcom/applovin/c/g;Lcom/applovin/c/h;)V

    invoke-interface {v0, v1, p1}, Lcom/applovin/a/b/dh;->a(Lcom/applovin/a/b/bf;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/a/b/bs;->c:Lcom/applovin/c/d;

    invoke-interface {v0, p1}, Lcom/applovin/c/d;->failedToReceiveAd(I)V

    goto :goto_0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/a/b/bs;->f(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/applovin/a/b/bs;->g(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/applovin/a/b/bs;->e(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/applovin/a/b/bs;->d(Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/applovin/a/b/bs;->b(Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/applovin/a/b/bs;->c(Ljava/util/Map;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/a/b/bs;->d:Z

    return-void
.end method

.method b()V
    .locals 1

    invoke-super {p0}, Lcom/applovin/a/b/ba;->b()V

    const/16 v0, -0x19a

    invoke-direct {p0, v0}, Lcom/applovin/a/b/bs;->b(I)V

    return-void
.end method

.method protected b(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/a/b/bs;->b:Lcom/applovin/c/h;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "require"

    iget-object v1, p0, Lcom/applovin/a/b/bs;->b:Lcom/applovin/c/h;

    invoke-virtual {v1}, Lcom/applovin/c/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method c()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/applovin/a/b/bs;->a(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/applovin/a/b/bs;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/applovin/a/b/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/util/Map;)V
    .locals 4

    invoke-static {}, Lcom/applovin/a/b/ci;->a()Lcom/applovin/a/b/ci;

    move-result-object v0

    const-string/jumbo v1, "tFNA"

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/ci;->a(Ljava/lang/String;)Lcom/applovin/a/b/ck;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "etf"

    invoke-virtual {v0}, Lcom/applovin/a/b/ck;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ntf"

    invoke-virtual {v0}, Lcom/applovin/a/b/ck;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/applovin/a/b/ci;->a()Lcom/applovin/a/b/ci;

    move-result-object v0

    const-string/jumbo v1, "tRA"

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/ci;->a(Ljava/lang/String;)Lcom/applovin/a/b/ck;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "etr"

    invoke-virtual {v0}, Lcom/applovin/a/b/ck;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ntr"

    invoke-virtual {v0}, Lcom/applovin/a/b/ck;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "fvr"

    invoke-virtual {v0}, Lcom/applovin/a/b/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "2.0/ad"

    iget-object v1, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-static {v0, v1}, Lcom/applovin/a/b/db;->b(Ljava/lang/String;Lcom/applovin/a/b/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "tFNA"

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 5

    iget-boolean v0, p0, Lcom/applovin/a/b/bs;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bs;->g:Lcom/applovin/c/l;

    iget-object v1, p0, Lcom/applovin/a/b/bs;->e:Ljava/lang/String;

    const-string/jumbo v2, "Preloading next ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->l()Lcom/applovin/a/b/bh;

    move-result-object v0

    const-string/jumbo v1, "ad_req"

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/bh;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/applovin/a/b/bs;->a(Lcom/applovin/a/b/bh;)V

    :try_start_0
    new-instance v0, Lcom/applovin/a/b/bt;

    const-string/jumbo v1, "RepeatFetchNextAd"

    sget-object v2, Lcom/applovin/a/b/bb;->i:Lcom/applovin/a/b/bd;

    iget-object v3, p0, Lcom/applovin/a/b/bs;->f:Lcom/applovin/a/b/e;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/applovin/a/b/bt;-><init>(Lcom/applovin/a/b/bs;Ljava/lang/String;Lcom/applovin/a/b/bd;Lcom/applovin/a/b/e;)V

    sget-object v1, Lcom/applovin/a/b/bb;->l:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/cd;->a(Lcom/applovin/a/b/bd;)V

    invoke-virtual {v0}, Lcom/applovin/a/b/cd;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/a/b/bs;->g:Lcom/applovin/c/l;

    iget-object v1, p0, Lcom/applovin/a/b/bs;->e:Ljava/lang/String;

    const-string/jumbo v2, "Fetching next ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/b/bs;->g:Lcom/applovin/c/l;

    iget-object v2, p0, Lcom/applovin/a/b/bs;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to fetch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/a/b/bs;->a:Lcom/applovin/c/g;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/a/b/bs;->b(I)V

    goto :goto_1
.end method
