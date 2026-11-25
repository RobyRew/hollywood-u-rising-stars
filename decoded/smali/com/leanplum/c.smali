.class final Lcom/leanplum/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/leanplum/bi;


# instance fields
.field private synthetic a:Lcom/leanplum/callbacks/VariablesChangedCallback;


# direct methods
.method constructor <init>(Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    .locals 0

    .prologue
    .line 2298
    iput-object p1, p0, Lcom/leanplum/c;->a:Lcom/leanplum/callbacks/VariablesChangedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 2302
    :try_start_0
    invoke-static {p1}, Lcom/leanplum/y;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2303
    if-nez v0, :cond_2

    .line 2304
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "No response received from the server. Please contact us to investigate."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/leanplum/c;->a:Lcom/leanplum/callbacks/VariablesChangedCallback;

    if-eqz v0, :cond_1

    .line 2324
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v0

    iget-object v1, p0, Lcom/leanplum/c;->a:Lcom/leanplum/callbacks/VariablesChangedCallback;

    invoke-virtual {v0, v1}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    .line 2329
    :cond_1
    :goto_1
    return-void

    .line 2307
    :cond_2
    const-string/jumbo v1, "vars"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 2309
    const-string/jumbo v2, "messages"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 2311
    const-string/jumbo v3, "regions"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 2313
    const-string/jumbo v4, "variants"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/leanplum/co;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 2315
    invoke-static {}, Lcom/leanplum/cg;->a()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/leanplum/cg;->b()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2317
    :cond_3
    invoke-static {v1, v2, v3, v4}, Lcom/leanplum/cg;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 2319
    :cond_4
    const-string/jumbo v1, "syncNewsfeed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2320
    invoke-static {}, Lcom/leanplum/Newsfeed;->a()Lcom/leanplum/Newsfeed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/Newsfeed;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2326
    :catch_0
    move-exception v0

    .line 2327
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
