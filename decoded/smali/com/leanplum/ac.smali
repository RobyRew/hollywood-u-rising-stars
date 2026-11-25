.class final Lcom/leanplum/ac;
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
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Ljava/util/Map;

.field private synthetic d:Lcom/leanplum/y;


# direct methods
.method constructor <init>(Lcom/leanplum/y;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    iput-object p2, p0, Lcom/leanplum/ac;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/leanplum/ac;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/leanplum/ac;->c:Ljava/util/Map;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 585
    invoke-static {}, Lcom/leanplum/y;->m()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 590
    :try_start_0
    const-string/jumbo v0, "file"

    iget-object v1, p0, Lcom/leanplum/ac;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/leanplum/ac;->b:Ljava/util/List;

    sget-object v3, Lcom/leanplum/cu;->a:Ljava/lang/String;

    sget-object v4, Lcom/leanplum/cu;->q:Ljava/lang/String;

    iget-object v5, p0, Lcom/leanplum/ac;->c:Ljava/util/Map;

    iget-object v6, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    invoke-static {v6}, Lcom/leanplum/y;->a(Lcom/leanplum/y;)Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/leanplum/cu;->d:Z

    const/16 v8, 0x3c

    invoke-static/range {v0 .. v8}, Lcom/leanplum/x;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZI)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 601
    if-eqz v1, :cond_4

    .line 602
    :try_start_1
    invoke-static {v1}, Lcom/leanplum/x;->a(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    .line 603
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 604
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    .line 605
    new-instance v0, Lorg/apache/http/HttpException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Leanplum: Error sending request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 615
    :catch_0
    move-exception v0

    .line 616
    :goto_0
    :try_start_2
    const-string/jumbo v2, "Leanplum"

    const-string/jumbo v3, "Unable to connect"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    iget-object v0, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    invoke-static {v0}, Lcom/leanplum/y;->c(Lcom/leanplum/y;)Lcom/leanplum/bg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    invoke-static {v0}, Lcom/leanplum/y;->c(Lcom/leanplum/y;)Lcom/leanplum/bg;

    move-result-object v0

    invoke-interface {v0}, Lcom/leanplum/bg;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 636
    :cond_0
    if-eqz v1, :cond_1

    .line 637
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 641
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/leanplum/ac;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 642
    invoke-static {}, Lcom/leanplum/y;->n()Ljava/util/Map;

    move-result-object v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 607
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    invoke-static {v2}, Lcom/leanplum/y;->b(Lcom/leanplum/y;)Lcom/leanplum/bi;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 608
    iget-object v2, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    invoke-static {v2}, Lcom/leanplum/y;->b(Lcom/leanplum/y;)Lcom/leanplum/bi;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/leanplum/bi;->a(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 636
    :cond_3
    :goto_3
    if-eqz v1, :cond_1

    .line 637
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 611
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    invoke-static {v0}, Lcom/leanplum/y;->c(Lcom/leanplum/y;)Lcom/leanplum/bg;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    invoke-static {v0}, Lcom/leanplum/y;->c(Lcom/leanplum/y;)Lcom/leanplum/bg;

    move-result-object v0

    new-instance v2, Lorg/apache/http/HttpException;

    const-string/jumbo v3, "Leanplum: Unable to read file"

    invoke-direct {v2, v3}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/leanplum/bg;->a()V
    :try_end_6
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 620
    :catch_1
    move-exception v0

    .line 621
    :goto_4
    :try_start_7
    const-string/jumbo v2, "Leanplum"

    const-string/jumbo v3, "Unable to convert to JSON"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    iget-object v0, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    invoke-static {v0}, Lcom/leanplum/y;->c(Lcom/leanplum/y;)Lcom/leanplum/bg;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 623
    iget-object v0, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    invoke-static {v0}, Lcom/leanplum/y;->c(Lcom/leanplum/y;)Lcom/leanplum/bg;

    move-result-object v0

    invoke-interface {v0}, Lcom/leanplum/bg;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 636
    :cond_5
    if-eqz v1, :cond_1

    .line 637
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 626
    :catch_2
    move-exception v0

    move-object v1, v9

    :goto_5
    :try_start_9
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v2, "Timeout uploading files. Try again or limit the number of files to upload with parameters to syncResourcesAsync"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    invoke-static {v0}, Lcom/leanplum/y;->c(Lcom/leanplum/y;)Lcom/leanplum/bg;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 628
    iget-object v0, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    invoke-static {v0}, Lcom/leanplum/y;->c(Lcom/leanplum/y;)Lcom/leanplum/bg;

    move-result-object v0

    invoke-interface {v0}, Lcom/leanplum/bg;->a()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 636
    :cond_6
    if-eqz v1, :cond_1

    .line 637
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 630
    :catch_3
    move-exception v0

    move-object v1, v9

    .line 631
    :goto_6
    :try_start_b
    const-string/jumbo v2, "Leanplum"

    const-string/jumbo v3, "Unable to send file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    iget-object v0, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    invoke-static {v0}, Lcom/leanplum/y;->c(Lcom/leanplum/y;)Lcom/leanplum/bg;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 633
    iget-object v0, p0, Lcom/leanplum/ac;->d:Lcom/leanplum/y;

    invoke-static {v0}, Lcom/leanplum/y;->c(Lcom/leanplum/y;)Lcom/leanplum/bg;

    move-result-object v0

    invoke-interface {v0}, Lcom/leanplum/bg;->a()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 636
    :cond_7
    if-eqz v1, :cond_1

    .line 637
    :try_start_c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 636
    :catchall_1
    move-exception v0

    move-object v1, v9

    :goto_7
    if-eqz v1, :cond_8

    .line 637
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0

    .line 644
    :cond_9
    invoke-static {}, Lcom/leanplum/y;->o()V

    .line 646
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    return-object v9

    .line 636
    :catchall_2
    move-exception v0

    goto :goto_7

    .line 630
    :catch_4
    move-exception v0

    goto :goto_6

    .line 626
    :catch_5
    move-exception v0

    goto :goto_5

    .line 620
    :catch_6
    move-exception v0

    move-object v1, v9

    goto :goto_4

    .line 615
    :catch_7
    move-exception v0

    move-object v1, v9

    goto/16 :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/leanplum/ac;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
