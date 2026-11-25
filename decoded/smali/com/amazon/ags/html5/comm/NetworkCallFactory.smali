.class public Lcom/amazon/ags/html5/comm/NetworkCallFactory;
.super Lcom/amazon/ags/html5/javascript/CallHandlerBase;
.source "SourceFile"


# static fields
.field private static final MAX_RESPONSE_LENGTH_BYTES:I = 0xf4240

.field private static final TAG:Ljava/lang/String;

.field private static final supportedCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final authManager:Lcom/amazon/ags/auth/AuthManager;

.field private final globalState:Lcom/amazon/ags/html5/util/GlobalState;

.field private final localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

.field private final networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

.field private final supportedMethodTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/html5/comm/NetworkCallFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "makeServiceCall"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->supportedCalls:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/auth/AuthManager;Landroid/os/Handler;Lcom/amazon/ags/html5/util/GlobalState;Lcom/amazon/ags/html5/util/LocalizationUtil;Lcom/amazon/ags/html5/comm/NetworkClient;)V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->supportedCalls:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/amazon/ags/html5/javascript/CallHandlerBase;-><init>(Landroid/os/Handler;Ljava/util/Set;)V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->supportedMethodTypes:Ljava/util/Set;

    .line 51
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->supportedMethodTypes:Ljava/util/Set;

    const-string/jumbo v1, "get"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->supportedMethodTypes:Ljava/util/Set;

    const-string/jumbo v1, "put"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->supportedMethodTypes:Ljava/util/Set;

    const-string/jumbo v1, "post"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->supportedMethodTypes:Ljava/util/Set;

    const-string/jumbo v1, "patch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iput-object p1, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->authManager:Lcom/amazon/ags/auth/AuthManager;

    .line 57
    iput-object p3, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->globalState:Lcom/amazon/ags/html5/util/GlobalState;

    .line 58
    iput-object p4, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    .line 59
    iput-object p5, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

    .line 60
    return-void
.end method

.method private createRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/amazon/ags/html5/comm/ServiceRequestBase;
    .locals 4

    .prologue
    .line 164
    const-string/jumbo v0, "put"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lcom/amazon/ags/html5/comm/AGSHttpPut;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p7}, Lcom/amazon/ags/html5/comm/AGSHttpPut;-><init>(Ljava/lang/String;Z)V

    .line 166
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ags/html5/comm/AGSHttpPut;->setRequestBody(Ljava/lang/String;)V

    move-object v2, v0

    .line 199
    :goto_0
    if-eqz p4, :cond_7

    .line 200
    invoke-virtual {p4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 201
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 202
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    invoke-virtual {v2, v0, v1}, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->putHeaderParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_0
    const-string/jumbo v0, "post"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    new-instance v1, Lcom/amazon/ags/html5/comm/AGSHttpPost;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p7}, Lcom/amazon/ags/html5/comm/AGSHttpPost;-><init>(Ljava/lang/String;Z)V

    .line 171
    invoke-virtual {p5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 172
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/amazon/ags/html5/comm/AGSHttpPost;->putUrlParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object v2, v1

    .line 177
    goto :goto_0

    :cond_2
    const-string/jumbo v0, "get"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    new-instance v1, Lcom/amazon/ags/html5/comm/AGSHttpGet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p7}, Lcom/amazon/ags/html5/comm/AGSHttpGet;-><init>(Ljava/lang/String;Z)V

    .line 180
    invoke-virtual {p5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 181
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/amazon/ags/html5/comm/AGSHttpGet;->putUrlParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v2, v1

    .line 186
    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "patch"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    new-instance v1, Lcom/amazon/ags/html5/comm/AGSHttpPatch;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p7}, Lcom/amazon/ags/html5/comm/AGSHttpPatch;-><init>(Ljava/lang/String;Z)V

    .line 189
    invoke-virtual {p5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 190
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/amazon/ags/html5/comm/AGSHttpPatch;->putUrlParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v2, v1

    .line 195
    goto/16 :goto_0

    .line 196
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported http method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_7
    if-eqz p6, :cond_8

    .line 210
    invoke-virtual {v2, p6}, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->setRequestBody(Ljava/lang/String;)V

    .line 212
    :cond_8
    return-object v2
.end method

.method private createRequestResult(Lcom/amazon/ags/html5/comm/ServiceResponse;)Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;
    .locals 8

    .prologue
    .line 216
    invoke-static {}, Lcom/amazon/ags/html5/factory/ServiceFactory;->isDebugLoggingEnabled()Z

    move-result v0

    .line 217
    invoke-virtual {p1}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 218
    invoke-virtual {p1}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getStatusCode()I

    move-result v2

    .line 219
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 222
    const-string/jumbo v4, "X-Amzn-RequestId"

    invoke-interface {v1, v4}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 225
    if-eqz v0, :cond_0

    .line 226
    const-string/jumbo v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Network response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    const/16 v5, 0x190

    if-lt v2, v5, :cond_2

    .line 231
    if-eqz v4, :cond_1

    sget-object v0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Network request ID for failed request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    new-instance v0, Lcom/amazon/ags/AGSServiceException;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/ags/AGSServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    if-nez v3, :cond_4

    .line 236
    if-eqz v4, :cond_3

    sget-object v0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Network request ID for failed request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_3
    new-instance v0, Lcom/amazon/ags/AGSClientException;

    const-string/jumbo v1, "Received null entity from http response"

    invoke-direct {v0, v1}, Lcom/amazon/ags/AGSClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_4
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/32 v6, 0xf4240

    cmp-long v2, v2, v6

    if-lez v2, :cond_6

    .line 243
    if-eqz v4, :cond_5

    sget-object v0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Network request ID for failed request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_5
    new-instance v0, Lcom/amazon/ags/AGSServiceException;

    const-string/jumbo v1, "Response content is longer than expected"

    invoke-direct {v0, v1}, Lcom/amazon/ags/AGSServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_6
    if-eqz v0, :cond_8

    .line 249
    if-eqz v4, :cond_7

    :try_start_0
    const-string/jumbo v0, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Network request ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_7
    const-string/jumbo v0, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Network response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_8
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;

    const-string/jumbo v2, "SUCCESS"

    invoke-direct {v1, p0, v0, v2}, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;-><init>(Lcom/amazon/ags/html5/comm/NetworkCallFactory;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private decorateRequestParametersWithPreIBAData(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 120
    const-string/jumbo v0, "locale"

    iget-object v1, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    invoke-virtual {v1}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->authManager:Lcom/amazon/ags/auth/AuthManager;

    invoke-virtual {v0}, Lcom/amazon/ags/auth/AuthManager;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "gameId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v1, "GameId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->globalState:Lcom/amazon/ags/html5/util/GlobalState;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/util/GlobalState;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    const-string/jumbo v1, "playerId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string/jumbo v1, "PlayerId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_0
    return-void
.end method

.method private handleServiceRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 142
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 147
    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->createRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/amazon/ags/html5/comm/ServiceRequestBase;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

    invoke-interface {v1, v0}, Lcom/amazon/ags/html5/comm/NetworkClient;->execute(Lcom/amazon/ags/html5/comm/ServiceRequestBase;)Lcom/amazon/ags/html5/comm/ServiceResponse;
    :try_end_0
    .catch Lcom/amazon/ags/html5/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 149
    :try_start_1
    invoke-direct {p0, v1}, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->createRequestResult(Lcom/amazon/ags/html5/comm/ServiceResponse;)Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;

    move-result-object v0

    .line 150
    invoke-virtual {v1}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v2}, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->sendReply(Ljava/lang/String;Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/amazon/ags/html5/comm/ConnectionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 160
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 152
    :goto_1
    sget-object v2, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Connection exception encountered while executing request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/ags/html5/comm/ConnectionException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_2
    new-instance v1, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;

    const-string/jumbo v2, "{}"

    const-string/jumbo v3, "NETWORK_ERROR"

    invoke-direct {v1, p0, v2, v3}, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;-><init>(Lcom/amazon/ags/html5/comm/NetworkCallFactory;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->sendReply(Ljava/lang/String;Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 155
    :catch_1
    move-exception v0

    move-object v1, v8

    .line 156
    :goto_3
    sget-object v2, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception encountered while executing request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_4
    new-instance v1, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;

    const-string/jumbo v2, "{}"

    const-string/jumbo v3, "ERROR"

    invoke-direct {v1, p0, v2, v3}, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;-><init>(Lcom/amazon/ags/html5/comm/NetworkCallFactory;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->sendReply(Ljava/lang/String;Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_4

    .line 155
    :catch_2
    move-exception v0

    goto :goto_3

    .line 151
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private sendReply(Ljava/lang/String;Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    if-nez p2, :cond_0

    .line 134
    new-instance p2, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;

    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "ERROR"

    invoke-direct {p2, p0, v0, v1}, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;-><init>(Lcom/amazon/ags/html5/comm/NetworkCallFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;->getResponseJSON()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;->getResponseCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 65
    const-string/jumbo v1, "makeServiceCall"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    :goto_0
    return v0

    .line 69
    :cond_0
    invoke-static {}, Lcom/amazon/ags/html5/factory/ServiceFactory;->isDebugLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Service call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    :try_start_0
    const-string/jumbo v0, "method"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    const-string/jumbo v0, "httpHeaders"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 85
    const-string/jumbo v0, "parameters"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 86
    const-string/jumbo v0, "httpPayload"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 87
    const-string/jumbo v0, "authenticate"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 88
    const-string/jumbo v0, "endPoint"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string/jumbo v0, "httpMethod"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    if-eqz p1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Insufficient arguments for request handling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    sget-object v1, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to service request for request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " due to JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    new-instance v0, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;

    const-string/jumbo v1, "{}"

    const-string/jumbo v2, "REQUEST_ERROR"

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;-><init>(Lcom/amazon/ags/html5/comm/NetworkCallFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;->getResponseJSON()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;->getResponseCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 105
    goto/16 :goto_0

    .line 95
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->supportedMethodTypes:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported http method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :catch_1
    move-exception v0

    .line 107
    sget-object v1, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to service request for request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " due to exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    new-instance v0, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;

    const-string/jumbo v1, "{}"

    const-string/jumbo v2, "REQUEST_ERROR"

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;-><init>(Lcom/amazon/ags/html5/comm/NetworkCallFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;->getResponseJSON()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/ags/html5/comm/NetworkCallFactory$RequestResult;->getResponseCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 111
    goto/16 :goto_0

    .line 99
    :cond_4
    :try_start_2
    invoke-direct {p0, v6}, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->decorateRequestParametersWithPreIBAData(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, p0

    move-object v1, p1

    .line 114
    invoke-direct/range {v0 .. v8}, Lcom/amazon/ags/html5/comm/NetworkCallFactory;->handleServiceRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    move v0, v9

    .line 115
    goto/16 :goto_0
.end method
