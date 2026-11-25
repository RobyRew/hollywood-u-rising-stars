.class public Lcom/amazon/ags/html5/comm/HttpNetworkClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/html5/comm/NetworkClient;


# static fields
.field private static final AUTH_TOKEN_HEADER:Ljava/lang/String; = "authorization-token"

.field private static final DEVICE_MAKE_HEADER:Ljava/lang/String; = "device-make"

.field private static final DEVICE_MODEL_HEADER:Ljava/lang/String; = "device-model"

.field public static final DEVICE_SERIAL_NUMBER_HEADER:Ljava/lang/String; = "device-serial-number"

.field private static final DEVICE_TYPE_HEADER:Ljava/lang/String; = "device-type"

.field private static final TAG:Ljava/lang/String; = "GC_HttpNetworkClient"


# instance fields
.field private final authManager:Lcom/amazon/ags/auth/AuthManager;

.field private final deviceInfo:Lcom/amazon/ags/html5/util/DeviceInfo;

.field private final eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

.field private final localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/amazon/ags/client/KindleFireProxy;Lcom/amazon/ags/auth/AuthManager;Lcom/amazon/ags/html5/util/DeviceInfo;Lcom/amazon/ags/client/metrics/EventCollectorClient;Lcom/amazon/ags/html5/util/LocalizationUtil;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 64
    iput-object p2, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    .line 65
    iput-object p3, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->authManager:Lcom/amazon/ags/auth/AuthManager;

    .line 66
    iput-object p4, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->deviceInfo:Lcom/amazon/ags/html5/util/DeviceInfo;

    .line 67
    iput-object p5, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    .line 68
    iput-object p6, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    .line 69
    return-void
.end method

.method private abortRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 0

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 189
    :cond_0
    return-void
.end method

.method private addADPTokenHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/amazon/ags/client/KindleFireProxy;->signMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 176
    if-nez v1, :cond_0

    .line 177
    new-instance v0, Lcom/amazon/ags/AGSClientException;

    const-string/jumbo v1, "Network request requires authentication"

    invoke-direct {v0, v1}, Lcom/amazon/ags/AGSClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    const-string/jumbo v2, "x-adp-token"

    const-string/jumbo v0, "token"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v0, "x-adp-alg"

    const-string/jumbo v2, "SHA256withRSA:1.0"

    invoke-virtual {p1, v0, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v2, "x-adp-signature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "signature"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v0, "nonce"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private addAuthenticationHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->kindleFireProxy:Lcom/amazon/ags/client/KindleFireProxy;

    invoke-interface {v0}, Lcom/amazon/ags/client/KindleFireProxy;->isKindle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->addADPTokenHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->addLWATokenHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V

    goto :goto_0
.end method

.method private addLWATokenHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->authManager:Lcom/amazon/ags/auth/AuthManager;

    invoke-virtual {v0}, Lcom/amazon/ags/auth/AuthManager;->tryGetToken()Ljava/lang/String;

    move-result-object v0

    .line 164
    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/amazon/ags/AGSClientException;

    const-string/jumbo v1, "Network request requires authentication"

    invoke-direct {v0, v1}, Lcom/amazon/ags/AGSClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    const-string/jumbo v1, "authorization-token"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private addRequestParameters(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/amazon/ags/html5/comm/ServiceRequestBase;)V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p2}, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->getHeaderParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    return-void
.end method


# virtual methods
.method public final execute(Lcom/amazon/ags/html5/comm/ServiceRequestBase;)Lcom/amazon/ags/html5/comm/ServiceResponse;
    .locals 9

    .prologue
    const/4 v6, -0x1

    .line 77
    invoke-virtual {p0, p1}, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->prepare(Lcom/amazon/ags/html5/comm/ServiceRequestBase;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v8

    .line 80
    const-string/jumbo v0, "device-type"

    iget-object v1, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->deviceInfo:Lcom/amazon/ags/html5/util/DeviceInfo;

    invoke-virtual {v1}, Lcom/amazon/ags/html5/util/DeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "device-make"

    invoke-static {}, Lcom/amazon/ags/html5/util/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "device-model"

    invoke-static {}, Lcom/amazon/ags/html5/util/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "device-serial-number"

    invoke-static {}, Lcom/amazon/ags/html5/util/DeviceInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "locale"

    iget-object v1, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    invoke-virtual {v1}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->isAuthenticationRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->addAuthenticationHeaders(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 95
    :try_start_0
    const-string/jumbo v0, "GC_HttpNetworkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Request: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    if-nez v1, :cond_2

    .line 108
    :cond_1
    const-string/jumbo v0, "HttpResponse must not be null"

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, v2

    invoke-virtual {p1}, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->getEndpoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "HttpResponse must not be null"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->reportServiceCall(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    new-instance v0, Lcom/amazon/ags/AGSClientException;

    const-string/jumbo v1, "HttpResponse must not be null"

    invoke-direct {v0, v1}, Lcom/amazon/ags/AGSClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {p1}, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->getEndpoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->reportServiceCall(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    invoke-direct {p0, v8}, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->abortRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 100
    new-instance v1, Lcom/amazon/ags/html5/comm/ConnectionException;

    invoke-direct {v1, v0}, Lcom/amazon/ags/html5/comm/ConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 101
    :catch_1
    move-exception v0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {p1}, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->getEndpoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->reportServiceCall(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    invoke-direct {p0, v8}, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->abortRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 105
    new-instance v1, Lcom/amazon/ags/AGSClientException;

    const-string/jumbo v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Lcom/amazon/ags/AGSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :cond_2
    const-string/jumbo v1, "GC_HttpNetworkClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {p1}, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->getEndpoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->reportServiceCall(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 115
    new-instance v1, Lcom/amazon/ags/html5/comm/ServiceResponse;

    invoke-direct {v1, v0}, Lcom/amazon/ags/html5/comm/ServiceResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    return-object v1
.end method

.method final prepare(Lcom/amazon/ags/html5/comm/ServiceRequestBase;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 3

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->prepareHttpRequestBase()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0, p1}, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->addRequestParameters(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/amazon/ags/html5/comm/ServiceRequestBase;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Lcom/amazon/ags/AGSClientException;

    const-string/jumbo v2, "Unable to prepare HTTP request"

    invoke-direct {v1, v2, v0}, Lcom/amazon/ags/AGSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 129
    :catch_1
    move-exception v0

    .line 130
    new-instance v1, Lcom/amazon/ags/AGSClientException;

    const-string/jumbo v2, "Invalid request URI"

    invoke-direct {v1, v2, v0}, Lcom/amazon/ags/AGSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected reportServiceCall(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    if-nez v0, :cond_0

    .line 193
    const-string/jumbo v0, "GC_HttpNetworkClient"

    const-string/jumbo v1, "Null collector. Cannot report service latency event."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    invoke-virtual {v0}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->isReportingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    const-string/jumbo v0, "GC_HttpNetworkClient"

    const-string/jumbo v1, "Reporting is disabled. Cannot report service latency event."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_1
    sget-object v0, Lcom/amazon/ags/constants/metrics/EventNames;->GameCircleServiceCall:Lcom/amazon/ags/constants/metrics/EventNames;

    invoke-virtual {v0}, Lcom/amazon/ags/constants/metrics/EventNames;->name()Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 205
    const-string/jumbo v2, "endpoint"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v2, "method"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string/jumbo v2, "reason"

    invoke-interface {v1, v2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 210
    const-string/jumbo v3, "statusCode"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 213
    const-string/jumbo v4, "latency"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :try_start_0
    new-instance v4, Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 217
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/HttpNetworkClient;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    invoke-virtual {v0, v4}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->reportGenericEvent(Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;)V
    :try_end_0
    .catch Lcom/amazon/ags/client/metrics/IllegalConstructionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-string/jumbo v0, "GC_HttpNetworkClient"

    const-string/jumbo v1, "Could not construct service latency event. It will not be reported."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
