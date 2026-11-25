.class public abstract Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenRequest;
.super Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest;
.source "SourceFile"


# static fields
.field private static final APPLICATION_JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenRequest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getEntity()Lorg/apache/http/entity/StringEntity;
    .locals 4

    .prologue
    .line 44
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenRequest;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Generating StringEntity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "json="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenRequest;->getJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenRequest;->getJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 46
    return-object v0
.end method

.method public abstract getJSONString()Ljava/lang/String;
.end method

.method public initializeHeaders()V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractTokenRequest;->initializeHeaders()V

    .line 55
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 56
    return-void
.end method
