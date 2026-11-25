.class public Lcom/amazon/insights/delivery/ERSRequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CONTENT_ENCODING_KEY:Ljava/lang/String; = "Content-Encoding"

.field static final DEFAULT_ENDPOINT:Ljava/lang/String; = "https://applab-sdk.amazon.com/1.0"

.field static final ENDPOINT_PATH:Ljava/lang/String; = "%s/applications/%s/events"

.field static final KEY_ENDPOINT:Ljava/lang/String; = "eventRecorderEndpoint"

.field static final UNIQUE_ID_HEADER_KEY:Ljava/lang/String; = "x-amzn-UniqueId"

.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private final context:Lcom/amazon/insights/core/InsightsContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/amazon/insights/delivery/ERSRequestBuilder;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/insights/core/InsightsContext;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->context:Lcom/amazon/insights/core/InsightsContext;

    .line 32
    return-void
.end method

.method private getEndpointUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v0

    const-string/jumbo v1, "eventRecorderEndpoint"

    const-string/jumbo v2, "https://applab-sdk.amazon.com/1.0"

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/core/configuration/Configuration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method createHttpRequest(Lorg/json/JSONArray;)Lcom/amazon/insights/core/http/HttpClient$Request;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/insights/InsightsCredentials;->getApplicationKey()Ljava/lang/String;

    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v2}, Lcom/amazon/insights/core/InsightsContext;->getHttpClient()Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/insights/core/http/HttpClient;->newRequest()Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v2

    const-string/jumbo v3, "%s/applications/%s/events"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/amazon/insights/delivery/ERSRequestBuilder;->getEndpointUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amazon/insights/core/http/HttpClient$Request;->setUrl(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v1

    const-string/jumbo v2, "x-amzn-UniqueId"

    iget-object v3, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v3}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/insights/core/idresolver/Id;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/insights/core/http/HttpClient$Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v1

    sget-object v2, Lcom/amazon/insights/core/http/HttpClient$HttpMethod;->POST:Lcom/amazon/insights/core/http/HttpClient$HttpMethod;

    invoke-interface {v1, v2}, Lcom/amazon/insights/core/http/HttpClient$Request;->setMethod(Lcom/amazon/insights/core/http/HttpClient$HttpMethod;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    :try_start_2
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 57
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 60
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v5

    .line 68
    :goto_1
    if-eqz v4, :cond_2

    .line 69
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 71
    :cond_2
    if-eqz v3, :cond_3

    .line 72
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v2, v5

    .line 81
    :goto_3
    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v1, v2}, Lcom/amazon/insights/core/http/HttpClient$Request;->setPostBody([B)Lcom/amazon/insights/core/http/HttpClient$Request;

    .line 86
    const-string/jumbo v0, "Content-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-interface {v1, v0, v2}, Lcom/amazon/insights/core/http/HttpClient$Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-object v0, v1

    .line 88
    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 62
    :try_start_5
    sget-object v5, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string/jumbo v6, "Error creating compressed String for ERS Request"

    invoke-virtual {v5, v6, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v5, v0

    goto :goto_1

    .line 74
    :catch_1
    move-exception v2

    .line 75
    sget-object v3, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string/jumbo v4, "Errror closing compression streams"

    invoke-virtual {v3, v4, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 64
    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v4, v0

    .line 65
    :goto_4
    :try_start_6
    sget-object v5, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string/jumbo v6, "Error attempting to compress request contents"

    invoke-virtual {v5, v6, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 68
    if-eqz v4, :cond_4

    .line 69
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 71
    :cond_4
    if-eqz v3, :cond_5

    .line 72
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_5
    move-object v2, v0

    .line 79
    goto :goto_3

    .line 74
    :catch_3
    move-exception v2

    .line 75
    sget-object v3, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string/jumbo v4, "Errror closing compression streams"

    invoke-virtual {v3, v4, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 67
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    .line 68
    :goto_6
    if-eqz v4, :cond_6

    .line 69
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 71
    :cond_6
    if-eqz v3, :cond_7

    .line 72
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 78
    :cond_7
    :goto_7
    throw v0

    .line 74
    :catch_4
    move-exception v1

    .line 75
    sget-object v2, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string/jumbo v3, "Errror closing compression streams"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 67
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 64
    :catch_5
    move-exception v2

    move-object v3, v0

    goto :goto_4

    :catch_6
    move-exception v2

    goto :goto_4
.end method
