.class Lcom/applovin/a/b/bj;
.super Lcom/applovin/a/b/ba;


# direct methods
.method constructor <init>(Lcom/applovin/a/b/e;)V
    .locals 1

    const-string/jumbo v0, "SubmitData"

    invoke-direct {p0, v0, p1}, Lcom/applovin/a/b/ba;-><init>(Ljava/lang/String;Lcom/applovin/a/b/e;)V

    return-void
.end method


# virtual methods
.method a(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/applovin/a/b/db;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/a/b/bj;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v1}, Lcom/applovin/a/b/e;->g()Lcom/applovin/a/b/be;

    move-result-object v1

    sget-object v2, Lcom/applovin/a/b/bb;->c:Lcom/applovin/a/b/bd;

    const-string/jumbo v3, "device_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/a/b/be;->a(Lcom/applovin/a/b/bd;Ljava/lang/Object;)V

    sget-object v2, Lcom/applovin/a/b/bb;->e:Lcom/applovin/a/b/bd;

    const-string/jumbo v3, "device_token"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/a/b/be;->a(Lcom/applovin/a/b/bd;Ljava/lang/Object;)V

    sget-object v2, Lcom/applovin/a/b/bb;->d:Lcom/applovin/a/b/bd;

    const-string/jumbo v3, "publisher_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/a/b/be;->a(Lcom/applovin/a/b/bd;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/applovin/a/b/be;->b()V

    iget-object v2, p0, Lcom/applovin/a/b/bj;->f:Lcom/applovin/a/b/e;

    invoke-static {v0, v2}, Lcom/applovin/a/b/db;->a(Lorg/json/JSONObject;Lcom/applovin/a/b/e;)V

    const-string/jumbo v2, "adserver_parameters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "adserver_parameters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/applovin/a/b/bb;->y:Lcom/applovin/a/b/bd;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/a/b/be;->a(Lcom/applovin/a/b/bd;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/b/bj;->g:Lcom/applovin/c/l;

    iget-object v2, p0, Lcom/applovin/a/b/bj;->e:Ljava/lang/String;

    const-string/jumbo v3, "Unable to parse API response"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Lorg/json/JSONObject;)V
    .locals 7

    iget-object v0, p0, Lcom/applovin/a/b/bj;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->t()Lcom/applovin/a/b/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/a/b/dc;->b()Lcom/applovin/a/b/de;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/a/b/dc;->a()Lcom/applovin/a/b/df;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "model"

    iget-object v5, v2, Lcom/applovin/a/b/df;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "os"

    iget-object v5, v2, Lcom/applovin/a/b/df;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "brand"

    iget-object v5, v2, Lcom/applovin/a/b/df;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "sdk_version"

    iget v5, v2, Lcom/applovin/a/b/df;->e:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "revision"

    iget-object v5, v2, Lcom/applovin/a/b/df;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "country_code"

    iget-object v5, v2, Lcom/applovin/a/b/df;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "carrier"

    iget-object v5, v2, Lcom/applovin/a/b/df;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "android"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/applovin/a/b/dc;->c()Lcom/applovin/a/b/dd;

    move-result-object v0

    iget-object v4, v0, Lcom/applovin/a/b/dd;->b:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/applovin/a/b/dd;->a:Z

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/applovin/a/b/bj;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->g()Lcom/applovin/a/b/be;

    move-result-object v0

    sget-object v6, Lcom/applovin/a/b/bb;->be:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v6}, Lcom/applovin/a/b/be;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v4}, Lcom/applovin/c/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "idfa"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string/jumbo v0, "dnt"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, v2, Lcom/applovin/a/b/df;->h:Ljava/util/Locale;

    if-eqz v0, :cond_2

    const-string/jumbo v2, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string/jumbo v0, "device_info"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "package_name"

    iget-object v3, v1, Lcom/applovin/a/b/de;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "app_name"

    iget-object v3, v1, Lcom/applovin/a/b/de;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "app_version"

    iget-object v3, v1, Lcom/applovin/a/b/de;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "installed_at"

    iget-wide v4, v1, Lcom/applovin/a/b/de;->d:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "applovin_sdk_version"

    const-string/jumbo v1, "6.1.4"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/applovin/a/b/bj;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "com.applovin.sdk.impl.isFirstRun"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/c/p;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "first_install"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "com.applovin.sdk.impl.isFirstRun"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    iget-object v0, p0, Lcom/applovin/a/b/bj;->f:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->F:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string/jumbo v1, "plugin_version"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string/jumbo v0, "app_info"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/applovin/a/b/bj;->f:Lcom/applovin/a/b/e;

    sget-object v1, Lcom/applovin/a/b/bb;->N:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/e;->a(Lcom/applovin/a/b/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/a/b/bj;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->e()Lcom/applovin/c/q;

    move-result-object v0

    check-cast v0, Lcom/applovin/a/b/cx;

    invoke-virtual {v0}, Lcom/applovin/a/b/cx;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/applovin/a/b/ag;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "targeting"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v0, p0, Lcom/applovin/a/b/bj;->f:Lcom/applovin/a/b/e;

    invoke-virtual {v0}, Lcom/applovin/a/b/e;->l()Lcom/applovin/a/b/bh;

    move-result-object v0

    const-string/jumbo v1, "stats"

    invoke-virtual {v0}, Lcom/applovin/a/b/bh;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    return-void
.end method

.method c(Lorg/json/JSONObject;)V
    .locals 6

    new-instance v0, Lcom/applovin/a/b/bk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Repeat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/a/b/bj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/applovin/a/b/bb;->g:Lcom/applovin/a/b/bd;

    iget-object v4, p0, Lcom/applovin/a/b/bj;->f:Lcom/applovin/a/b/e;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/applovin/a/b/bk;-><init>(Lcom/applovin/a/b/bj;Ljava/lang/String;Lcom/applovin/a/b/bd;Lcom/applovin/a/b/e;Lorg/json/JSONObject;)V

    sget-object v1, Lcom/applovin/a/b/bb;->k:Lcom/applovin/a/b/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/a/b/cd;->a(Lcom/applovin/a/b/bd;)V

    invoke-virtual {v0}, Lcom/applovin/a/b/cd;->run()V

    return-void
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/a/b/bj;->g:Lcom/applovin/c/l;

    iget-object v1, p0, Lcom/applovin/a/b/bj;->e:Ljava/lang/String;

    const-string/jumbo v2, "Submitting user data..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/applovin/a/b/bj;->b(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/applovin/a/b/bj;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/a/b/bj;->g:Lcom/applovin/c/l;

    iget-object v2, p0, Lcom/applovin/a/b/bj;->e:Ljava/lang/String;

    const-string/jumbo v3, "Unable to build JSON message with collected data"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/c/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
