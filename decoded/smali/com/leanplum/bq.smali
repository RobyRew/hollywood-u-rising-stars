.class final Lcom/leanplum/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/leanplum/bi;


# instance fields
.field private synthetic a:Lcom/leanplum/Newsfeed;


# direct methods
.method constructor <init>(Lcom/leanplum/Newsfeed;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/leanplum/bq;->a:Lcom/leanplum/Newsfeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 12

    .prologue
    .line 177
    :try_start_0
    invoke-static {p1}, Lcom/leanplum/y;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 178
    if-nez v0, :cond_0

    .line 179
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "No newsfeed response received from the server."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string/jumbo v1, "newsfeedMessages"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 184
    if-nez v3, :cond_1

    .line 185
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "No newsfeed messages found in the response from the server."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 188
    :cond_1
    const/4 v1, 0x0

    .line 189
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 191
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 195
    const-string/jumbo v2, "messageData"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v7, "vars"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    .line 198
    const-string/jumbo v2, "deliveryTimestamp"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 199
    const/4 v2, 0x0

    .line 200
    const-string/jumbo v9, "expirationTimestamp"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 201
    const-string/jumbo v2, "expirationTimestamp"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 203
    :cond_2
    const-string/jumbo v9, "isRead"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 205
    invoke-static {v0, v8, v2, v6, v7}, Lcom/leanplum/NewsfeedMessage;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLjava/util/Map;)Lcom/leanplum/NewsfeedMessage;

    move-result-object v2

    .line 207
    if-eqz v2, :cond_4

    .line 208
    if-nez v6, :cond_3

    .line 209
    add-int/lit8 v1, v1, 0x1

    .line 211
    :cond_3
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move v0, v1

    move v1, v0

    .line 213
    goto :goto_1

    .line 214
    :cond_5
    iget-object v0, p0, Lcom/leanplum/bq;->a:Lcom/leanplum/Newsfeed;

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v1, v2}, Lcom/leanplum/Newsfeed;->a(Ljava/util/Map;IZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
