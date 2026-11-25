.class Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;
.super Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;
.source "SourceFile"


# static fields
.field static final AUTHZ_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field static final AUTHZ_ERROR_DESCIRPTION:Ljava/lang/String; = "error_description"

.field static final AUTHZ_INSUFFICIENT_SCOPE:Ljava/lang/String; = "insufficient_scope"

.field static final AUTHZ_INVALID_CLIENT:Ljava/lang/String; = "invalid_client"

.field static final AUTHZ_INVALID_GRANT:Ljava/lang/String; = "invalid_grant"

.field static final AUTHZ_INVALID_REQUEST:Ljava/lang/String; = "invalid_request"

.field static final AUTHZ_INVALID_SCOPE:Ljava/lang/String; = "invalid_scope"

.field static final AUTHZ_INVALID_TOKEN:Ljava/lang/String; = "invalid_token"

.field static final AUTHZ_UNAUTHORIZED_CLIENT:Ljava/lang/String; = "unauthorized_client"

.field static final AUTHZ_UNSUPPORTED_GRANT_TYPE:Ljava/lang/String; = "unsupported_grant_type"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final REQUEST_ID_HEADER:Ljava/lang/String; = "x-amzn-RequestId"


# instance fields
.field protected mAccessToken:Lcom/amazon/identity/auth/device/token/AccessAtzToken;

.field private final mAppFamilyId:Ljava/lang/String;

.field private mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    .line 60
    iput-object p2, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mAppFamilyId:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public createPrimaryToken(Ljava/lang/String;J)Lcom/amazon/identity/auth/device/token/Token;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mAppFamilyId:Ljava/lang/String;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V

    return-object v0
.end method

.method protected doParse(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->extractAccessAtzToken(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mAccessToken:Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    .line 73
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->extractRefreshAtzToken(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    .line 74
    return-void
.end method

.method public extractAccessAtzToken(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/AccessAtzToken;
    .locals 4

    .prologue
    .line 86
    :try_start_0
    const-string/jumbo v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string/jumbo v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->getExpiresIn(Lorg/json/JSONObject;)J

    move-result-wide v2

    .line 100
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/token/AbstractToken;->secsToMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->createPrimaryToken(Ljava/lang/String;J)Lcom/amazon/identity/auth/device/token/Token;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    return-object v0

    .line 91
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to find AccessAtzToken in JSON response, throwing AuthError"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v1, "JSON response did not contain an AccessAtzToken"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    :catch_0
    move-exception v0

    .line 96
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error reading JSON response, throwing AuthError"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v1, "Error reading JSON response"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method

.method public extractRefreshAtzToken(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/RefreshAtzToken;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 105
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Extracting RefreshToken"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :try_start_0
    const-string/jumbo v1, "refresh_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string/jumbo v0, "refresh_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v0, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->getAppFamilyId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 114
    :goto_0
    return-object v0

    .line 113
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to find RefreshAtzToken in JSON response"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error reading JSON response, throwing AuthError"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v1, "Error reading JSON response"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method

.method protected extractResponseJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 157
    :try_start_0
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->extractResponseJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 163
    :goto_0
    return-object p1

    .line 159
    :catch_0
    move-exception v0

    .line 161
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "No Response type in the response"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAccessAtzToken()Lcom/amazon/identity/auth/device/token/AccessAtzToken;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mAccessToken:Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    return-object v0
.end method

.method public getAppFamilyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mAppFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getAtzTokens()[Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mAccessToken:Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getRefreshAtzToken()Lcom/amazon/identity/auth/device/token/RefreshAtzToken;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    const-string/jumbo v0, "1.0.0"

    return-object v0
.end method

.method handleInvalidToken(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 270
    const-string/jumbo v0, "Invalid Token in exchange."

    .line 271
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v1, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected handleJSONError(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 170
    :try_start_0
    const-string/jumbo v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    const-string/jumbo v1, "error_description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->isInvalidGrant(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string/jumbo v1, "Invalid source authorization in exchange."

    .line 177
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v2, Lcom/amazon/identity/auth/device/InvalidGrantAuthError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/amazon/identity/auth/device/InvalidGrantAuthError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Server Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v0, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1

    .line 180
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->isInvalidToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->handleInvalidToken(Lorg/json/JSONObject;)V

    .line 214
    :cond_1
    return-void

    .line 184
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->isInvalidClient(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    const-string/jumbo v1, "Invalid Client. ApiKey is invalid "

    .line 187
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_INVALID_CLIENT:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, v1, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v2

    .line 190
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->isInvalidScope(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->isInsufficientScope(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 192
    :cond_4
    const-string/jumbo v1, "Invalid Scope. Authorization not valid for the requested scopes "

    .line 193
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_INVALID_SCOPE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, v1, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v2

    .line 196
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->isUnauthorizedClient(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 198
    const-string/jumbo v1, "Unauthorizaied Client.  The authenticated client is not authorized to use this authorization grant type. "

    .line 199
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_UNAUTHORIZED_CLIENT:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, v1, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v2

    .line 204
    :cond_6
    const-string/jumbo v1, "Server error doing authorization exchange. "

    .line 205
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, v1, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method isInsufficientScope(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 238
    const-string/jumbo v0, "insufficient_scope"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isInvalidClient(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 228
    const-string/jumbo v0, "invalid_client"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isInvalidGrant(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 233
    const-string/jumbo v0, "invalid_grant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unsupported_grant_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInvalidScope(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 223
    const-string/jumbo v0, "invalid_scope"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isInvalidToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 243
    const-string/jumbo v0, "invalid_token"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "invalid_request"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "access_token"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUnauthorizedClient(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 218
    const-string/jumbo v0, "unauthorized_client"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected logRequestId(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->logRequestId(Lorg/json/JSONObject;)V

    .line 255
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 257
    const-string/jumbo v1, "x-amzn-RequestId"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    .line 260
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "ExchangeRepsonse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "No RequestId in headers"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public testParse(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;->doParse(Lorg/json/JSONObject;)V

    .line 67
    return-void
.end method
