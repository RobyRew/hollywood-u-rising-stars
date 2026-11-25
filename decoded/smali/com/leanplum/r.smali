.class final Lcom/leanplum/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/leanplum/bi;


# instance fields
.field private synthetic a:Lcom/leanplum/q;


# direct methods
.method constructor <init>(Lcom/leanplum/q;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/leanplum/r;->a:Lcom/leanplum/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 143
    :try_start_0
    invoke-static {p1}, Lcom/leanplum/y;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 144
    if-nez v3, :cond_1

    .line 145
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "No response received from the server. Please contact us to investigate."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/leanplum/r;->a:Lcom/leanplum/q;

    iget-object v0, v0, Lcom/leanplum/q;->a:Lcom/leanplum/callbacks/VariablesChangedCallback;

    invoke-virtual {v0}, Lcom/leanplum/callbacks/VariablesChangedCallback;->variablesChanged()V

    .line 171
    :goto_1
    return-void

    .line 148
    :cond_1
    const-string/jumbo v1, "vars"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 150
    const-string/jumbo v1, "messages"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 152
    const-string/jumbo v4, "regions"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    .line 154
    const-string/jumbo v5, "variants"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/leanplum/co;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 156
    sget-boolean v5, Lcom/leanplum/cu;->o:Z

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/leanplum/cg;->a()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v2, v0

    .line 160
    :cond_3
    invoke-static {}, Lcom/leanplum/cg;->b()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 163
    :goto_2
    if-nez v2, :cond_4

    if-eqz v0, :cond_0

    .line 164
    :cond_4
    invoke-static {v2, v0, v4, v3}, Lcom/leanplum/cg;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method
