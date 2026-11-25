.class final Lcom/leanplum/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/leanplum/ci;


# direct methods
.method constructor <init>(Lcom/leanplum/ci;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    move v2, v0

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "/"

    .line 97
    :goto_1
    iget-object v1, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v1}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v1}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 101
    :goto_2
    iget-object v0, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "wss"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "https"

    .line 102
    :goto_3
    new-instance v3, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "//"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v5}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "wss"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->b(Lcom/leanplum/ci;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 105
    :goto_4
    iget-object v4, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    iget-object v5, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v5}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;Ljava/net/Socket;)Ljava/net/Socket;

    .line 107
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->c(Lcom/leanplum/ci;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GET "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " HTTP/1.1\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v0, "Upgrade: websocket\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v0, "Connection: Upgrade\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Host: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v1}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Origin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Sec-WebSocket-Key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v1}, Lcom/leanplum/ci;->d(Lcom/leanplum/ci;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "Sec-WebSocket-Version: 13\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->e(Lcom/leanplum/ci;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->e(Lcom/leanplum/ci;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 117
    const-string/jumbo v3, "%s: %s\r\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_5

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string/jumbo v1, "WebSocketClient"

    const-string/jumbo v2, "WebSocket EOF!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    iget-object v0, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->f(Lcom/leanplum/ci;)Lcom/leanplum/cm;

    move-result-object v0

    const-string/jumbo v1, "EOF"

    invoke-interface {v0, v7, v1}, Lcom/leanplum/cm;->a(ILjava/lang/String;)V

    .line 159
    :goto_6
    return-void

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    move v2, v0

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x50

    move v2, v0

    goto/16 :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 101
    :cond_3
    const-string/jumbo v0, "http"

    goto/16 :goto_3

    .line 104
    :cond_4
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    goto/16 :goto_4

    .line 120
    :cond_5
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 123
    new-instance v0, Lcom/leanplum/db;

    iget-object v1, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v1}, Lcom/leanplum/ci;->c(Lcom/leanplum/ci;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leanplum/db;-><init>(Ljava/io/InputStream;)V

    .line 126
    iget-object v1, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    iget-object v2, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v2, v0}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;Lcom/leanplum/db;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;Ljava/lang/String;)Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 127
    if-nez v1, :cond_6

    .line 128
    new-instance v0, Lorg/apache/http/HttpException;

    const-string/jumbo v1, "Received no reply from server."

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 151
    :catch_1
    move-exception v0

    .line 153
    const-string/jumbo v1, "WebSocketClient"

    const-string/jumbo v2, "Websocket SSL error!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    iget-object v0, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v0}, Lcom/leanplum/ci;->f(Lcom/leanplum/ci;)Lcom/leanplum/cm;

    move-result-object v0

    const-string/jumbo v1, "SSL"

    invoke-interface {v0, v7, v1}, Lcom/leanplum/cm;->a(ILjava/lang/String;)V

    goto :goto_6

    .line 129
    :cond_6
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_7

    .line 130
    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    :catch_2
    move-exception v0

    .line 157
    iget-object v1, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v1}, Lcom/leanplum/ci;->f(Lcom/leanplum/ci;)Lcom/leanplum/cm;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/leanplum/cm;->a(Ljava/lang/Exception;)V

    goto/16 :goto_6

    .line 135
    :cond_7
    :goto_7
    :try_start_3
    iget-object v1, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v1, v0}, Lcom/leanplum/ci;->a(Lcom/leanplum/ci;Lcom/leanplum/db;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 136
    iget-object v2, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v2, v1}, Lcom/leanplum/ci;->b(Lcom/leanplum/ci;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 137
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    goto :goto_7

    .line 142
    :cond_8
    iget-object v1, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v1}, Lcom/leanplum/ci;->f(Lcom/leanplum/ci;)Lcom/leanplum/cm;

    move-result-object v1

    invoke-interface {v1}, Lcom/leanplum/cm;->b()V

    .line 145
    iget-object v1, p0, Lcom/leanplum/cj;->a:Lcom/leanplum/ci;

    invoke-static {v1}, Lcom/leanplum/ci;->g(Lcom/leanplum/ci;)Lcom/leanplum/da;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/leanplum/da;->a(Lcom/leanplum/db;)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    :cond_9
    move-object v1, v0

    goto/16 :goto_2
.end method
