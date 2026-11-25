.class public Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClient;


# static fields
.field private static final DATE_KEY:Ljava/lang/String; = "Date"

.field private static final GET_ENDPOINT:Ljava/lang/String; = "https://ags-ext.amazon.com/service/gamedata/WhisperData"

.field private static final POST_ENDPOINT:Ljava/lang/String; = "https://ags-ext.amazon.com/service/gamedata/WhisperData"

.field private static final TAG:Ljava/lang/String; = "GC_Whispersync"

.field private static final VERSION_ID_HEADER_KEY:Ljava/lang/String; = "x-amzn-gc-version-id"


# instance fields
.field private final gameId:Ljava/lang/String;

.field private final networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;


# direct methods
.method public constructor <init>(Lcom/amazon/ags/html5/comm/NetworkClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClientImpl;->networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

    .line 37
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClientImpl;->gameId:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getWhisperData(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;
    .locals 6

    .prologue
    .line 84
    new-instance v0, Lcom/amazon/ags/html5/comm/AGSHttpGet;

    const-string/jumbo v1, "https://ags-ext.amazon.com/service/gamedata/WhisperData"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/html5/comm/AGSHttpGet;-><init>(Ljava/lang/String;Z)V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const-string/jumbo v1, "x-amzn-gc-version-id"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/ags/html5/comm/AGSHttpGet;->putHeaderParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    const-string/jumbo v1, "gameId"

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClientImpl;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ags/html5/comm/AGSHttpGet;->putUrlParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClientImpl;->networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

    invoke-interface {v1, v0}, Lcom/amazon/ags/html5/comm/NetworkClient;->execute(Lcom/amazon/ags/html5/comm/ServiceRequestBase;)Lcom/amazon/ags/html5/comm/ServiceResponse;

    move-result-object v0

    .line 97
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string/jumbo v2, "Date"

    invoke-virtual {v0, v2}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 102
    const-string/jumbo v3, "GC_Whispersync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received HTTP Status Code ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] and content ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] when saving data to the cloud"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v0}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getStatusCode()I

    move-result v3

    .line 106
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 107
    const-string/jumbo v3, "x-amzn-gc-version-id"

    invoke-virtual {v0, v3}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    new-instance v3, Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;

    invoke-direct {v3, v1, v0, v2}, Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Lcom/amazon/ags/html5/comm/ConnectionException;

    const-string/jumbo v2, "error reading content"

    invoke-direct {v1, v2, v0}, Lcom/amazon/ags/html5/comm/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :cond_1
    const/16 v0, 0xcc

    if-ne v3, v0, :cond_2

    .line 109
    const-string/jumbo v0, ""

    .line 110
    const-string/jumbo v3, "GC_Whispersync"

    const-string/jumbo v4, "No content found while getting Whispersync data from the service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_2
    const/16 v0, 0x194

    if-ne v3, v0, :cond_3

    .line 112
    const-string/jumbo v0, ""

    .line 113
    const-string/jumbo v3, "GC_Whispersync"

    const-string/jumbo v4, "Resource not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_3
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Unexpected Http Status Code received when making call to get Whispersync data from the service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Lcom/amazon/ags/html5/comm/ConnectionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected Status Response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/ags/html5/comm/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postWhisperData(Lcom/amazon/ags/client/whispersync/network/WhispersyncRequest;)Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;
    .locals 6

    .prologue
    .line 43
    new-instance v0, Lcom/amazon/ags/html5/comm/AGSHttpPost;

    const-string/jumbo v1, "https://ags-ext.amazon.com/service/gamedata/WhisperData"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/html5/comm/AGSHttpPost;-><init>(Ljava/lang/String;Z)V

    .line 44
    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/network/WhispersyncRequest;->getDocument()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/amazon/ags/html5/comm/AGSHttpPost;->setRequestBody(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/network/WhispersyncRequest;->getPriorVersionId()Ljava/lang/String;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const-string/jumbo v2, "x-amzn-gc-version-id"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ags/html5/comm/AGSHttpPost;->putHeaderParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    const-string/jumbo v1, "gameId"

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClientImpl;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ags/html5/comm/AGSHttpPost;->putUrlParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClientImpl;->networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

    invoke-interface {v1, v0}, Lcom/amazon/ags/html5/comm/NetworkClient;->execute(Lcom/amazon/ags/html5/comm/ServiceRequestBase;)Lcom/amazon/ags/html5/comm/ServiceResponse;

    move-result-object v0

    .line 58
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string/jumbo v2, "Date"

    invoke-virtual {v0, v2}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 63
    const-string/jumbo v3, "GC_Whispersync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received HTTP Status Code ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] and content ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] when saving data to the cloud"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getStatusCode()I

    move-result v3

    .line 67
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 68
    const-string/jumbo v3, "x-amzn-gc-version-id"

    invoke-virtual {v0, v3}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    new-instance v3, Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;

    invoke-direct {v3, v1, v0, v2}, Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lcom/amazon/ags/html5/comm/ConnectionException;

    const-string/jumbo v2, "error reading content"

    invoke-direct {v1, v2, v0}, Lcom/amazon/ags/html5/comm/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :cond_1
    const/16 v0, 0xcc

    if-ne v3, v0, :cond_2

    .line 70
    const-string/jumbo v0, ""

    .line 71
    const-string/jumbo v3, "GC_Whispersync"

    const-string/jumbo v4, "No content found while getting whispersync data from the service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_2
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Unexpected Http Status Code received when making call to get whispersync data from the service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Lcom/amazon/ags/AGSServiceException;

    const-string/jumbo v1, "Unexpected Service Response"

    invoke-direct {v0, v1}, Lcom/amazon/ags/AGSServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
