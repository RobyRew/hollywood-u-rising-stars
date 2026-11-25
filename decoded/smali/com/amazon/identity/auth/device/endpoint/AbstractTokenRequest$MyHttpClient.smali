.class public Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest$MyHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SourceFile"


# static fields
.field private static final BKS:Ljava/lang/String; = "BKS"

.field private static final HTTPS:Ljava/lang/String; = "https"


# instance fields
.field final synthetic this$0:Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest;)V
    .locals 1

    .prologue
    .line 383
    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest$MyHttpClient;->this$0:Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 384
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest;->getDefaultHttpResponseInterceptor()Lorg/apache/http/HttpResponseInterceptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest$MyHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 385
    return-void
.end method

.method private newSslSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    .line 393
    :try_start_0
    const-string/jumbo v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 394
    new-instance v1, Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest$MyHttpClient$MySSLSocketFactory;

    invoke-direct {v1, p0, v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest$MyHttpClient$MySSLSocketFactory;-><init>(Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest$MyHttpClient;Ljava/security/KeyStore;)V

    .line 395
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    return-object v1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method protected createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 5

    .prologue
    .line 405
    invoke-static {}, Lcom/amazon/identity/auth/device/utils/DefaultLibraryInfo;->isProd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    .line 409
    :cond_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 410
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v2, "https"

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest$MyHttpClient;->newSslSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 411
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest$MyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    goto :goto_0
.end method
