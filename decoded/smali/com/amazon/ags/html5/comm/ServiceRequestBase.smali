.class public abstract Lcom/amazon/ags/html5/comm/ServiceRequestBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHAR_SET:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final authenticationRequired:Z

.field private final endPoint:Ljava/lang/String;

.field private final headerParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected requestBody:Ljava/lang/String;

.field private final urlParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->headerParams:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->urlParams:Ljava/util/Map;

    .line 37
    iput-boolean p2, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->authenticationRequired:Z

    .line 38
    iput-object p1, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->endPoint:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public constructUri()Ljava/lang/String;
    .locals 6

    .prologue
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->endPoint:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0}, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->getUrlParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    if-eqz v2, :cond_1

    const-string/jumbo v0, "?"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const/4 v0, 0x0

    move v2, v0

    .line 54
    goto :goto_0

    .line 52
    :cond_1
    const-string/jumbo v0, "&"

    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->requestBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->requestBody:Ljava/lang/String;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->endPoint:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaderParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->headerParams:Ljava/util/Map;

    return-object v0
.end method

.method public final getUrlParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->urlParams:Ljava/util/Map;

    return-object v0
.end method

.method public final isAuthenticationRequired()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->authenticationRequired:Z

    return v0
.end method

.method abstract prepareHttpRequestBase()Lorg/apache/http/client/methods/HttpRequestBase;
.end method

.method public final putHeaderParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->headerParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public final putUrlParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->urlParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public setRequestBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazon/ags/html5/comm/ServiceRequestBase;->requestBody:Ljava/lang/String;

    .line 81
    return-void
.end method
