.class Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenResponse;
.super Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;
.source "SourceFile"


# static fields
.field static final ACCESS_TOKEN_INDEX:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String;

.field static final REFRESH_TOKEN_INDEX:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenResponse;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating OauthCodeForTokenResponse appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method


# virtual methods
.method public extractRefreshAtzToken(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/RefreshAtzToken;
    .locals 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->extractRefreshAtzToken(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v1, "JSON response did not contain an AccessAtzToken"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0

    .line 35
    :cond_0
    return-object v0
.end method

.method isInvalidToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method
