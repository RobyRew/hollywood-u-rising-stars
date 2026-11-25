.class public Lcom/amazon/ags/html5/comm/AGSHttpPatch;
.super Lcom/amazon/ags/html5/comm/ServiceRequestBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/html5/comm/ServiceRequestBase;-><init>(Ljava/lang/String;Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public prepareHttpRequestBase()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lorg/apache/http/client/methods/HttpPatch;

    invoke-virtual {p0}, Lcom/amazon/ags/html5/comm/AGSHttpPatch;->constructUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPatch;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/amazon/ags/html5/comm/AGSHttpPatch;->requestBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 29
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/json-patch+json"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPatch;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v2, p0, Lcom/amazon/ags/html5/comm/AGSHttpPatch;->requestBody:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPatch;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 32
    :cond_0
    return-object v0
.end method
