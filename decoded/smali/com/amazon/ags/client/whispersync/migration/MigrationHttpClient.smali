.class public Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DOWNLOAD_URL:Ljava/lang/String; = "https://cortana-gateway.amazon.com/cortana/gateway/getSignedDownloadUrl"

.field private static final DOWNLOAD_URL_RESPONSE_KEY:Ljava/lang/String; = "downloadUrl"

.field private static final GAME_ID_PARAMETER_NAME:Ljava/lang/String; = "GameId"

.field private static final GAME_PACKAGE_PARAM_NAME:Ljava/lang/String; = "PackageName"

.field private static final TAG:Ljava/lang/String; = "GC_Whispersync"


# instance fields
.field private final gameId:Ljava/lang/String;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/html5/comm/NetworkClient;Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;->gameId:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;->packageName:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;->networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

    .line 45
    iput-object p4, p0, Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 46
    return-void
.end method

.method private isResponseNoSuchKey(Lorg/apache/http/HttpResponse;)Z
    .locals 2

    .prologue
    .line 141
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseUrlFromResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v1, "downloadUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v2, "Conversion - Error retrieving download URL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final download(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/migration/DownloadResult;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :try_start_1
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 90
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 91
    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;->isResponseNoSuchKey(Lorg/apache/http/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Conversion - No V1 game data exists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;

    sget-object v1, Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;->NO_DATA:Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;

    invoke-direct {v0, v4, v1}, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;-><init>([BLcom/amazon/ags/api/whispersync/migration/MigrationResultCode;)V

    .line 137
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string/jumbo v0, "GC_Whispersync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Conversion - invalid URI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;

    sget-object v1, Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;->FAILURE:Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;

    invoke-direct {v0, v4, v1}, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;-><init>([BLcom/amazon/ags/api/whispersync/migration/MigrationResultCode;)V

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    .line 86
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v2, "Conversion - Unable to download V1 game data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    new-instance v0, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;

    sget-object v1, Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;->NETWORK_FAILURE:Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;

    invoke-direct {v0, v4, v1}, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;-><init>([BLcom/amazon/ags/api/whispersync/migration/MigrationResultCode;)V

    goto :goto_0

    .line 95
    :cond_0
    const-string/jumbo v1, "GC_Whispersync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Conversion - Unexpected response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;

    sget-object v1, Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;->FAILURE:Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;

    invoke-direct {v0, v4, v1}, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;-><init>([BLcom/amazon/ags/api/whispersync/migration/MigrationResultCode;)V

    goto :goto_0

    .line 101
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    .line 110
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    const/16 v2, 0x400

    :try_start_3
    new-array v2, v2, [B

    .line 116
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    .line 117
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 122
    :catch_2
    move-exception v0

    .line 124
    :try_start_4
    const-string/jumbo v2, "GC_Whispersync"

    const-string/jumbo v3, "Conversion - Network timeout"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    new-instance v0, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;

    const/4 v2, 0x0

    sget-object v3, Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;->FAILURE:Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;

    invoke-direct {v0, v2, v3}, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;-><init>([BLcom/amazon/ags/api/whispersync/migration/MigrationResultCode;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 132
    :catch_3
    move-exception v1

    .line 133
    const-string/jumbo v2, "GC_Whispersync"

    const-string/jumbo v3, "Conversion - Error while closing download stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 102
    :catch_4
    move-exception v0

    .line 103
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v2, "Conversion - Unexpected exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    new-instance v0, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;

    sget-object v1, Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;->FAILURE:Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;

    invoke-direct {v0, v4, v1}, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;-><init>([BLcom/amazon/ags/api/whispersync/migration/MigrationResultCode;)V

    goto/16 :goto_0

    .line 105
    :catch_5
    move-exception v0

    .line 106
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v2, "Conversion - Unexpected exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    new-instance v0, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;

    sget-object v1, Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;->FAILURE:Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;

    invoke-direct {v0, v4, v1}, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;-><init>([BLcom/amazon/ags/api/whispersync/migration/MigrationResultCode;)V

    goto/16 :goto_0

    .line 120
    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    .line 131
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 137
    :goto_2
    new-instance v0, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;

    sget-object v1, Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;->SUCCESS:Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;

    invoke-direct {v0, v2, v1}, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;-><init>([BLcom/amazon/ags/api/whispersync/migration/MigrationResultCode;)V

    goto/16 :goto_0

    .line 132
    :catch_6
    move-exception v0

    .line 133
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v3, "Conversion - Error while closing download stream"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 126
    :catch_7
    move-exception v0

    .line 127
    :try_start_8
    const-string/jumbo v2, "GC_Whispersync"

    const-string/jumbo v3, "Conversion - Unexpected exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    new-instance v0, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;

    const/4 v2, 0x0

    sget-object v3, Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;->FAILURE:Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;

    invoke-direct {v0, v2, v3}, Lcom/amazon/ags/client/whispersync/migration/DownloadResult;-><init>([BLcom/amazon/ags/api/whispersync/migration/MigrationResultCode;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 131
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_0

    .line 132
    :catch_8
    move-exception v1

    .line 133
    const-string/jumbo v2, "GC_Whispersync"

    const-string/jumbo v3, "Conversion - Error while closing download stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 134
    :goto_3
    throw v0

    .line 132
    :catch_9
    move-exception v1

    .line 133
    const-string/jumbo v2, "GC_Whispersync"

    const-string/jumbo v3, "Conversion - Error while closing download stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public getV1GameDataDownloadUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/amazon/ags/html5/comm/AGSHttpGet;

    const-string/jumbo v1, "https://cortana-gateway.amazon.com/cortana/gateway/getSignedDownloadUrl"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/html5/comm/AGSHttpGet;-><init>(Ljava/lang/String;Z)V

    .line 50
    const-string/jumbo v1, "PackageName"

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ags/html5/comm/AGSHttpGet;->putUrlParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v1, "GameId"

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ags/html5/comm/AGSHttpGet;->putHeaderParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;->networkClient:Lcom/amazon/ags/html5/comm/NetworkClient;

    invoke-interface {v1, v0}, Lcom/amazon/ags/html5/comm/NetworkClient;->execute(Lcom/amazon/ags/html5/comm/ServiceRequestBase;)Lcom/amazon/ags/html5/comm/ServiceResponse;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/amazon/ags/html5/comm/ServiceResponse;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;->parseUrlFromResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
