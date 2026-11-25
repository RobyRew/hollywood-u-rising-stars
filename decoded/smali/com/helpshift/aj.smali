.class Lcom/helpshift/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Landroid/os/Handler;

.field final synthetic f:Lcom/helpshift/ai;


# direct methods
.method constructor <init>(Lcom/helpshift/ai;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iput-object p2, p0, Lcom/helpshift/aj;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/helpshift/aj;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpshift/aj;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/helpshift/aj;->d:Landroid/os/Handler;

    iput-object p6, p0, Lcom/helpshift/aj;->e:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 238
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/helpshift/aj;->a:Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 239
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 240
    const/16 v2, 0x1388

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 241
    const/16 v2, 0x2710

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 243
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Helpshift-Android/3.7.1/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string/jumbo v5, "http.useragent"

    invoke-interface {v2, v5, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 247
    iget-object v0, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iget-object v2, p0, Lcom/helpshift/aj;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 248
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 250
    iget-object v2, p0, Lcom/helpshift/aj;->c:Ljava/lang/String;

    const-string/jumbo v6, "GET"

    if-ne v2, v6, :cond_4

    .line 251
    iget-object v0, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iget-object v2, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iget-object v6, p0, Lcom/helpshift/aj;->a:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/helpshift/aj;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/helpshift/aj;->c:Ljava/lang/String;

    invoke-static {v2, v6, v7, v8}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 252
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    invoke-static {v2}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;)Lcom/helpshift/dx;

    move-result-object v2

    iget-object v5, p0, Lcom/helpshift/aj;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/helpshift/dx;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 255
    const-string/jumbo v5, "If-None-Match"

    invoke-virtual {v0, v5, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    :goto_0
    const-string/jumbo v2, "Accept-Language"

    sget-object v5, Lcom/helpshift/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v2, "Accept-Encoding"

    const-string/jumbo v5, "gzip"

    invoke-virtual {v0, v2, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v2, "X-HS-V"

    const-string/jumbo v5, "Helpshift-Android/3.7.1"

    invoke-virtual {v0, v2, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/helpshift/b/b; {:try_start_0 .. :try_end_0} :catch_2

    .line 274
    :try_start_1
    invoke-interface {v4, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 276
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    move v0, v1

    .line 277
    :goto_1
    array-length v2, v7

    if-ge v0, v2, :cond_1

    .line 278
    aget-object v2, v7, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "ETag"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 279
    iget-object v2, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    invoke-static {v2}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;)Lcom/helpshift/dx;

    move-result-object v2

    iget-object v5, p0, Lcom/helpshift/aj;->b:Ljava/lang/String;

    aget-object v0, v7, v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/helpshift/dx;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 285
    const-string/jumbo v0, ""

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 288
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 289
    const-string/jumbo v0, "Content-Encoding"

    invoke-interface {v4, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "gzip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 292
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 294
    :goto_2
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 295
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lcom/helpshift/b/b; {:try_start_1 .. :try_end_1} :catch_2

    .line 298
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 299
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lcom/helpshift/b/b; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 301
    :catch_0
    move-exception v0

    .line 302
    :try_start_3
    const-string/jumbo v2, "HelpShiftDebug"

    const-string/jumbo v4, "IO Exception ex"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    :cond_2
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 307
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 308
    const-string/jumbo v4, "status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const/16 v4, 0xc8

    if-lt v0, v4, :cond_6

    const/16 v4, 0x12c

    if-ge v0, v4, :cond_6

    .line 310
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helpshift/ai;->a(I)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lcom/helpshift/b/b; {:try_start_3 .. :try_end_3} :catch_2

    .line 312
    :try_start_4
    const-string/jumbo v0, "response"

    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lcom/helpshift/b/b; {:try_start_4 .. :try_end_4} :catch_2

    .line 322
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/helpshift/aj;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 323
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 324
    iget-object v1, p0, Lcom/helpshift/aj;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Lcom/helpshift/b/b; {:try_start_5 .. :try_end_5} :catch_2

    .line 380
    :cond_3
    :goto_5
    return-void

    .line 257
    :cond_4
    :try_start_6
    iget-object v2, p0, Lcom/helpshift/aj;->c:Ljava/lang/String;

    const-string/jumbo v6, "POST"

    if-ne v2, v6, :cond_0

    .line 258
    iget-object v0, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iget-object v2, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iget-object v6, p0, Lcom/helpshift/aj;->a:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/helpshift/aj;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/helpshift/aj;->c:Ljava/lang/String;

    invoke-static {v2, v6, v7, v8}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/helpshift/ai;->b(Lcom/helpshift/ai;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    .line 259
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/helpshift/b/b; {:try_start_6 .. :try_end_6} :catch_2

    .line 261
    :try_start_7
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/helpshift/b/b; {:try_start_7 .. :try_end_7} :catch_2

    .line 265
    :goto_6
    :try_start_8
    const-string/jumbo v0, "Content-type"

    const-string/jumbo v5, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v0, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 266
    goto/16 :goto_0

    .line 262
    :catch_1
    move-exception v0

    .line 263
    const-string/jumbo v5, "HelpShiftDebug"

    const-string/jumbo v6, "makerequest"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Lcom/helpshift/b/b; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    .line 376
    :catch_2
    move-exception v0

    .line 377
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "install() not called"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    iget-object v0, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iget-object v1, p0, Lcom/helpshift/aj;->e:Landroid/os/Handler;

    invoke-static {v0, v1, v9}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;Landroid/os/Handler;I)V

    goto :goto_5

    .line 277
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 314
    :catch_3
    move-exception v0

    .line 316
    :try_start_9
    const-string/jumbo v0, "response"

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Lcom/helpshift/b/b; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    .line 318
    :catch_4
    move-exception v0

    .line 319
    :try_start_a
    throw v0
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catch Lcom/helpshift/b/b; {:try_start_a .. :try_end_a} :catch_2

    .line 351
    :catch_5
    move-exception v0

    .line 352
    :try_start_b
    iget-object v1, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iget-object v2, p0, Lcom/helpshift/aj;->e:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;Landroid/os/Handler;I)V

    .line 353
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catch Lcom/helpshift/b/b; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    .line 325
    :cond_6
    const/16 v4, 0x130

    if-ne v0, v4, :cond_7

    .line 326
    :try_start_c
    invoke-static {}, Lcom/helpshift/ai;->a()I

    .line 327
    iget-object v0, p0, Lcom/helpshift/aj;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 328
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 329
    iget-object v1, p0, Lcom/helpshift/aj;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catch Lcom/helpshift/b/b; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_5

    .line 354
    :catch_6
    move-exception v0

    .line 355
    :try_start_d
    iget-object v1, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iget-object v2, p0, Lcom/helpshift/aj;->e:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;Landroid/os/Handler;I)V

    .line 356
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception Unknown Host"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Lcom/helpshift/b/b; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_5

    .line 330
    :cond_7
    const/16 v4, 0x1a6

    if-ne v0, v4, :cond_a

    .line 331
    :try_start_e
    invoke-static {}, Lcom/helpshift/ai;->a()I

    .line 332
    invoke-static {}, Lcom/helpshift/ai;->b()I

    move-result v0

    const/4 v4, 0x3

    if-gt v0, v4, :cond_9

    move v6, v1

    .line 333
    :goto_7
    array-length v0, v7

    if-ge v6, v0, :cond_3

    .line 334
    aget-object v0, v7, v6

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HS-UEpoch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 335
    iget-object v0, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    invoke-static {v0}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;)Lcom/helpshift/dx;

    move-result-object v0

    aget-object v1, v7, v6

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/helpshift/e/ag;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/dx;->a(Ljava/lang/Float;)V

    .line 336
    iget-object v0, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iget-object v1, p0, Lcom/helpshift/aj;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/aj;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/helpshift/aj;->d:Landroid/os/Handler;

    iget-object v5, p0, Lcom/helpshift/aj;->e:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 333
    :cond_8
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_7

    .line 340
    :cond_9
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/helpshift/ai;->a(I)I

    .line 341
    iget-object v0, p0, Lcom/helpshift/aj;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 342
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 343
    iget-object v1, p0, Lcom/helpshift/aj;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_e .. :try_end_e} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catch Lcom/helpshift/b/b; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_5

    .line 357
    :catch_7
    move-exception v0

    .line 358
    :try_start_f
    iget-object v1, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iget-object v2, p0, Lcom/helpshift/aj;->e:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;Landroid/os/Handler;I)V

    .line 359
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception cannot connect Host"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catch Lcom/helpshift/b/b; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_5

    .line 346
    :cond_a
    const/4 v0, 0x0

    :try_start_10
    invoke-static {v0}, Lcom/helpshift/ai;->a(I)I

    .line 347
    iget-object v0, p0, Lcom/helpshift/aj;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 348
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Lcom/helpshift/aj;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Lcom/helpshift/b/b; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_5

    .line 360
    :catch_8
    move-exception v0

    .line 361
    :try_start_11
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception Socket timeout"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 362
    :catch_9
    move-exception v0

    .line 363
    iget-object v1, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iget-object v2, p0, Lcom/helpshift/aj;->e:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;Landroid/os/Handler;I)V

    .line 364
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception Socket timeout"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 365
    :catch_a
    move-exception v0

    .line 366
    iget-object v1, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iget-object v2, p0, Lcom/helpshift/aj;->e:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;Landroid/os/Handler;I)V

    .line 368
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception Client Protocol"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 369
    :catch_b
    move-exception v0

    .line 370
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception SSL Peer Unverified"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 371
    :catch_c
    move-exception v0

    .line 372
    iget-object v1, p0, Lcom/helpshift/aj;->f:Lcom/helpshift/ai;

    iget-object v2, p0, Lcom/helpshift/aj;->e:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/helpshift/ai;->a(Lcom/helpshift/ai;Landroid/os/Handler;I)V

    .line 374
    const-string/jumbo v1, "HelpShiftDebug"

    const-string/jumbo v2, "Exception IO"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catch Lcom/helpshift/b/b; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_5

    :cond_b
    move-object v0, v2

    goto/16 :goto_2
.end method
