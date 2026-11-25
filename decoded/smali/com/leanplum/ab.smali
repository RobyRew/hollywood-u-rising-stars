.class final Lcom/leanplum/ab;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Map;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lcom/leanplum/y;


# direct methods
.method constructor <init>(Lcom/leanplum/y;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/leanplum/ab;->c:Lcom/leanplum/y;

    iput-object p2, p0, Lcom/leanplum/ab;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/leanplum/ab;->b:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 374
    .line 378
    :try_start_0
    sget-object v0, Lcom/leanplum/cu;->a:Ljava/lang/String;

    sget-object v1, Lcom/leanplum/cu;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/leanplum/ab;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/leanplum/ab;->c:Lcom/leanplum/y;

    invoke-static {v3}, Lcom/leanplum/y;->a(Lcom/leanplum/y;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/leanplum/cu;->d:Z

    sget v5, Lcom/leanplum/cu;->e:I

    invoke-static/range {v0 .. v5}, Lcom/leanplum/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZI)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 386
    :try_start_1
    invoke-static {v1}, Lcom/leanplum/x;->a(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 387
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 390
    const/16 v0, 0x190

    if-lt v3, v0, :cond_3

    .line 391
    new-instance v0, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "HTTP error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 392
    const/16 v4, 0x198

    if-eq v3, v4, :cond_0

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_1

    const/16 v4, 0x257

    if-gt v3, v4, :cond_1

    .line 393
    :cond_0
    iget-object v3, p0, Lcom/leanplum/ab;->b:Ljava/util/List;

    invoke-static {v3}, Lcom/leanplum/y;->a(Ljava/util/List;)V

    .line 406
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/leanplum/ab;->c:Lcom/leanplum/y;

    iget-object v4, p0, Lcom/leanplum/ab;->b:Ljava/util/List;

    invoke-static {v3, v2, v4, v0}, Lcom/leanplum/y;->a(Lcom/leanplum/y;Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/Exception;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 415
    if-eqz v1, :cond_2

    .line 416
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 422
    :cond_2
    :goto_1
    return-object v6

    .line 397
    :cond_3
    :try_start_4
    invoke-static {v2}, Lcom/leanplum/y;->a(Lorg/json/JSONObject;)I

    move-result v0

    .line 398
    iget-object v3, p0, Lcom/leanplum/ab;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_4

    .line 399
    const-string/jumbo v3, "Leanplum"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Sent "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/leanplum/ab;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " requests but only received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    move-object v0, v6

    .line 402
    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    .line 408
    :goto_2
    :try_start_5
    const-string/jumbo v3, "Leanplum"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error parsing JSON response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    iget-object v3, p0, Lcom/leanplum/ab;->c:Lcom/leanplum/y;

    iget-object v4, p0, Lcom/leanplum/ab;->b:Ljava/util/List;

    invoke-static {v3, v2, v4, v0}, Lcom/leanplum/y;->a(Lcom/leanplum/y;Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 415
    if-eqz v1, :cond_2

    .line 416
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 419
    :catch_1
    move-exception v0

    .line 420
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 410
    :catch_2
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    .line 411
    :goto_3
    :try_start_7
    iget-object v3, p0, Lcom/leanplum/ab;->b:Ljava/util/List;

    invoke-static {v3}, Lcom/leanplum/y;->a(Ljava/util/List;)V

    .line 412
    const-string/jumbo v3, "Leanplum"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to send request: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    iget-object v3, p0, Lcom/leanplum/ab;->c:Lcom/leanplum/y;

    iget-object v4, p0, Lcom/leanplum/ab;->b:Ljava/util/List;

    invoke-static {v3, v2, v4, v0}, Lcom/leanplum/y;->a(Lcom/leanplum/y;Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 415
    if-eqz v1, :cond_2

    .line 416
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 415
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_5

    .line 416
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 415
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 410
    :catch_3
    move-exception v0

    move-object v2, v6

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    .line 407
    :catch_5
    move-exception v0

    move-object v2, v6

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/leanplum/ab;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
