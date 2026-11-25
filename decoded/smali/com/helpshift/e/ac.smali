.class final Lcom/helpshift/e/ac;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/e/ae;

.field final synthetic b:Lcom/helpshift/al;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/helpshift/e/ae;Lcom/helpshift/al;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/helpshift/e/ac;->a:Lcom/helpshift/e/ae;

    iput-object p2, p0, Lcom/helpshift/e/ac;->b:Lcom/helpshift/al;

    iput-object p3, p0, Lcom/helpshift/e/ac;->c:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lorg/json/JSONArray;

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/e/ac;->a:Lcom/helpshift/e/ae;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/helpshift/e/ac;->a:Lcom/helpshift/e/ae;

    invoke-virtual {v0}, Lcom/helpshift/e/ae;->a()V

    :cond_0
    move v7, v1

    .line 121
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 122
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 123
    const-string/jumbo v0, "id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v2, p0, Lcom/helpshift/e/ac;->b:Lcom/helpshift/al;

    iget-object v2, v2, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v2}, Lcom/helpshift/dx;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/helpshift/e/ac;->b:Lcom/helpshift/al;

    iget-object v2, v2, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    invoke-virtual {v2, v0}, Lcom/helpshift/dx;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 126
    const-string/jumbo v2, "messages"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 127
    const-string/jumbo v2, "newMessagesCnt"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 128
    if-eqz v3, :cond_1

    .line 130
    :try_start_1
    sget-object v0, Lcom/helpshift/e/v;->a:Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "created_at"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    long-to-int v2, v4

    .line 131
    iget-object v0, p0, Lcom/helpshift/e/ac;->c:Landroid/content/Context;

    const-string/jumbo v4, "id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "inapp"

    iget-object v5, p0, Lcom/helpshift/e/ac;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/helpshift/e/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/helpshift/e/ab;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :cond_1
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    :try_start_2
    invoke-static {}, Lcom/helpshift/e/ab;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 143
    :catch_1
    move-exception v0

    .line 144
    invoke-static {}, Lcom/helpshift/e/ab;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    return-void
.end method
