.class final Lcom/leanplum/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/leanplum/ba;


# instance fields
.field private synthetic a:Lcom/leanplum/bj;


# direct methods
.method constructor <init>(Lcom/leanplum/bj;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/leanplum/bk;->a:Lcom/leanplum/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 56
    iget-object v0, p0, Lcom/leanplum/bk;->a:Lcom/leanplum/bj;

    invoke-static {v0}, Lcom/leanplum/bj;->a(Lcom/leanplum/bj;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "Connected to development server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_0
    const-string/jumbo v0, "appId"

    invoke-static {}, Lcom/leanplum/y;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "deviceId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/leanplum/y;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/leanplum/x;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 63
    :try_start_1
    iget-object v1, p0, Lcom/leanplum/bk;->a:Lcom/leanplum/bj;

    invoke-static {v1}, Lcom/leanplum/bj;->b(Lcom/leanplum/bj;)Lcom/leanplum/au;

    move-result-object v1

    const-string/jumbo v2, "auth"

    new-instance v3, Lorg/json/JSONArray;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/json/JSONObject;

    const/4 v5, 0x0

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lcom/leanplum/au;->a(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/leanplum/bk;->a:Lcom/leanplum/bj;

    invoke-static {v0, v7}, Lcom/leanplum/bj;->c(Lcom/leanplum/bj;Z)Z

    .line 71
    iget-object v0, p0, Lcom/leanplum/bk;->a:Lcom/leanplum/bj;

    invoke-static {v0, v7}, Lcom/leanplum/bj;->a(Lcom/leanplum/bj;Z)Z

    .line 72
    iget-object v0, p0, Lcom/leanplum/bk;->a:Lcom/leanplum/bj;

    invoke-static {v0, v8}, Lcom/leanplum/bj;->b(Lcom/leanplum/bj;Z)Z

    .line 74
    :cond_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 68
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "Development socket error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 80
    :try_start_0
    const-string/jumbo v0, "updateVars"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-static {}, Lcom/leanplum/Leanplum;->forceContentUpdate()V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string/jumbo v0, "trigger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_0

    .line 88
    const-string/jumbo v3, "messageId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    const-string/jumbo v4, "isRooted"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 90
    const-string/jumbo v0, "__name__"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-static {}, Lcom/leanplum/cg;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 93
    if-eqz v0, :cond_2

    const-string/jumbo v1, "values"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 95
    :goto_1
    invoke-static {v2}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/leanplum/cg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 97
    new-instance v1, Lcom/leanplum/ActionContext;

    invoke-direct {v1, v5, v0, v3}, Lcom/leanplum/ActionContext;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Lcom/leanplum/ActionContext;->a()V

    .line 99
    invoke-virtual {v1, v4}, Lcom/leanplum/ActionContext;->a(Z)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/leanplum/ActionContext;->b(Z)V

    .line 101
    invoke-virtual {v1}, Lcom/leanplum/ActionContext;->b()V

    .line 102
    invoke-static {v1}, Lcom/leanplum/Leanplum;->a(Lcom/leanplum/ActionContext;)V

    .line 103
    invoke-static {}, Lcom/leanplum/cq;->a()Lcom/leanplum/cq;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/leanplum/cq;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    :try_start_2
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "Error getting action info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 93
    goto :goto_1

    .line 109
    :cond_3
    :try_start_3
    const-string/jumbo v0, "getVariables"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    invoke-static {}, Lcom/leanplum/cg;->g()Z

    move-result v0

    .line 111
    invoke-static {}, Lcom/leanplum/cg;->i()V

    .line 112
    iget-object v1, p0, Lcom/leanplum/bk;->a:Lcom/leanplum/bj;

    const-string/jumbo v2, "getContentResponse"

    const-string/jumbo v3, "updated"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/leanplum/x;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/leanplum/bj;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 114
    :cond_4
    const-string/jumbo v0, "getActions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    invoke-static {}, Lcom/leanplum/cg;->h()Z

    move-result v0

    .line 116
    invoke-static {}, Lcom/leanplum/cg;->i()V

    .line 117
    iget-object v1, p0, Lcom/leanplum/bk;->a:Lcom/leanplum/bj;

    const-string/jumbo v2, "getContentResponse"

    const-string/jumbo v3, "updated"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/leanplum/x;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/leanplum/bj;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 119
    :cond_5
    const-string/jumbo v0, "registerDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/leanplum/Leanplum;->c()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 123
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "email"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 126
    :goto_2
    if-nez v0, :cond_6

    :try_start_5
    const-string/jumbo v0, "a Leanplum account"

    .line 127
    :cond_6
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v1

    new-instance v2, Lcom/leanplum/bl;

    invoke-direct {v2, p0, v0}, Lcom/leanplum/bl;-><init>(Lcom/leanplum/bk;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "Disconnected from development server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/leanplum/bk;->a:Lcom/leanplum/bj;

    invoke-static {v0, v2}, Lcom/leanplum/bj;->a(Lcom/leanplum/bj;Z)Z

    .line 50
    iget-object v0, p0, Lcom/leanplum/bk;->a:Lcom/leanplum/bj;

    invoke-static {v0, v2}, Lcom/leanplum/bj;->b(Lcom/leanplum/bj;Z)Z

    .line 51
    iget-object v0, p0, Lcom/leanplum/bk;->a:Lcom/leanplum/bj;

    invoke-static {v0, v2}, Lcom/leanplum/bj;->c(Lcom/leanplum/bj;Z)Z

    .line 52
    return-void
.end method
