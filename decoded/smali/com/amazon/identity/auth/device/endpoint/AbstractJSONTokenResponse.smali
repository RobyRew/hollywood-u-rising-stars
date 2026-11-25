.class public abstract Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/identity/auth/device/endpoint/TokenResponse;


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field protected static final COOKIE:Ljava/lang/String; = "cookie"

.field public static final EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field protected static final FORCE_UPDATE:Ljava/lang/String; = "force_update"

.field private static final FORCE_UPDATE_REQUESTED:Ljava/lang/String; = "1"

.field private static final INVALID_SOURCE_TOKEN:Ljava/lang/String; = "InvalidSourceToken"

.field private static final INVALID_TOKEN:Ljava/lang/String; = "INVALID_TOKEN"

.field private static final INVALID_TOKEN_CODE:Ljava/lang/String; = "InvalidToken"

.field private static final JSON_CODE_FIELD:Ljava/lang/String; = "code"

.field protected static final JSON_ERROR_FIELD:Ljava/lang/String; = "error"

.field private static final JSON_MESSAGE_FIELD:Ljava/lang/String; = "message"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field public static final REQUEST_ID:Ljava/lang/String; = "request_id"

.field protected static final RESPONSE:Ljava/lang/String; = "response"

.field private static final SERVER_ERROR:Ljava/lang/String; = "ServerError"

.field private static final SERVER_ERROR_PAGE_IDENTIFIER:Ljava/lang/String; = "!DOCTYPE html"

.field protected static final TOKEN:Ljava/lang/String; = "token"

.field public static final TOKEN_EXPIRES_IN:Ljava/lang/String; = "token_expires_in"

.field public static final TOKEN_TYPE:Ljava/lang/String; = "token_type"

.field public static final VER_UNKOWN:Ljava/lang/String; = "Unkown"


# instance fields
.field private final _response:Lorg/apache/http/HttpResponse;

.field private _sEntity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_response:Lorg/apache/http/HttpResponse;

    .line 69
    return-void
.end method

.method public static hasReceived500Error(Lorg/apache/http/HttpResponse;)Z
    .locals 2

    .prologue
    .line 412
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 413
    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x257

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract createPrimaryToken(Ljava/lang/String;J)Lcom/amazon/identity/auth/device/token/Token;
.end method

.method protected abstract doParse(Lorg/json/JSONObject;)V
.end method

.method protected extractPrimaryToken(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/Token;
    .locals 4

    .prologue
    .line 336
    :try_start_0
    const-string/jumbo v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string/jumbo v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 350
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->getExpiresIn(Lorg/json/JSONObject;)J

    move-result-wide v2

    .line 352
    invoke-virtual {p0, v0, v2, v3}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->createPrimaryToken(Ljava/lang/String;J)Lcom/amazon/identity/auth/device/token/Token;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    :try_start_1
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to find AccessToken in JSON response, throwing AuthError"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v1, "JSON response did not contain an AccessToken"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    :catch_0
    move-exception v0

    .line 346
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error reading JSON response, throwing AuthError"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v1, "Error reading JSON response"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
.end method

.method protected extractResponseJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 101
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_sEntity:Ljava/lang/String;

    return-object v0
.end method

.method protected getExpiresIn(Lorg/json/JSONObject;)J
    .locals 4

    .prologue
    .line 364
    const-wide/16 v0, 0x0

    .line 366
    :try_start_0
    const-string/jumbo v2, "token_expires_in"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    const-string/jumbo v2, "token_expires_in"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 377
    :goto_0
    return-wide v0

    .line 368
    :cond_0
    const-string/jumbo v2, "expires_in"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    const-string/jumbo v2, "expires_in"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 371
    :cond_1
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to find expiration time in JSON response, AccessToken will not expire locally"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v2

    .line 375
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to parse expiration time in JSON response, AccessToken will not expire locally"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getJSONResponse()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_sEntity:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Entity Extracted"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "entity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_sEntity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_sEntity:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->extractResponseJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 88
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->logRequestId(Lorg/json/JSONObject;)V

    .line 89
    return-object v1
.end method

.method protected getResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_response:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 4

    .prologue
    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 400
    :catch_0
    move-exception v0

    .line 402
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v2, "StatusLine is null"

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_COM:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, "3.3.0"

    return-object v0
.end method

.method protected handleForceUpdate(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 144
    .line 147
    :try_start_0
    const-string/jumbo v0, "force_update"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_0

    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 151
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Force update requested ver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Server denied request, requested Force Update ver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    sget-object v4, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_FORCE_UPDATE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, v0, v3, v4}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :catch_0
    move-exception v0

    .line 159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JSON exception parsing force update response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1

    .line 165
    :catch_1
    move-exception v0

    .line 168
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JSON parsing exception force update parsing response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_PARSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1

    .line 174
    :cond_0
    return-void
.end method

.method protected handleJSONError(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 262
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 264
    const-string/jumbo v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string/jumbo v2, "ServerError"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    const-string/jumbo v3, "INVALID_TOKEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    new-instance v0, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;

    const-string/jumbo v2, "Invalid Exchange parameter - SERVER_ERROR."

    invoke-direct {v0, v2}, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 294
    :catch_0
    move-exception v0

    .line 297
    if-eqz v1, :cond_1

    .line 299
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v2, "JSON exception parsing json error response:"

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1

    .line 275
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->throwUnknownAuthError(Ljava/lang/String;)V

    .line 309
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    const-string/jumbo v2, "InvalidSourceToken"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    new-instance v0, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;

    const-string/jumbo v2, "Invalid Source Token in exchange parameter"

    invoke-direct {v0, v2}, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    :catch_1
    move-exception v0

    .line 304
    if-eqz v1, :cond_1

    .line 306
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v2, "Exception parsing response"

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_PARSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1

    .line 282
    :cond_3
    :try_start_2
    const-string/jumbo v2, "InvalidToken"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 284
    new-instance v0, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;

    const-string/jumbo v2, "Token used is invalid."

    invoke-direct {v0, v2}, Lcom/amazon/identity/auth/device/InvalidTokenAuthError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_4
    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_response:Lorg/apache/http/HttpResponse;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->hasReceived500Error(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "500 error (status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->throwUnknownAuthError(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_5
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->throwUnknownAuthError(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method protected logRequestId(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 112
    :try_start_0
    const-string/jumbo v0, "request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "ExchangeRepsonse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 117
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "No RequestId in JSON response"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public parse()V
    .locals 5

    .prologue
    .line 192
    const-string/jumbo v1, ""

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_response:Lorg/apache/http/HttpResponse;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->hasReceived500Error(Lorg/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "500 error (status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->getJSONResponse()Lorg/json/JSONObject;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->handleJSONError(Lorg/json/JSONObject;)V

    .line 202
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->doParse(Lorg/json/JSONObject;)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->handleForceUpdate(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 231
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalStateException closing response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :catch_1
    move-exception v0

    .line 233
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException closing response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :catch_2
    move-exception v0

    .line 205
    :try_start_2
    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_sEntity:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_sEntity:Ljava/lang/String;

    const-string/jumbo v3, "!DOCTYPE html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Server sending back default error page - BAD request"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v2, "Server sending back default error page - BAD request"

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    :catchall_0
    move-exception v0

    .line 228
    :try_start_3
    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 234
    :goto_1
    throw v0

    .line 213
    :cond_1
    :try_start_4
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JSON exception parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " response:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "JSON exception html = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_sEntity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1

    .line 216
    :catch_3
    move-exception v0

    .line 217
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " response:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_PARSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1

    .line 219
    :catch_4
    move-exception v0

    .line 220
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception accessing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " response:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_COM:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    :catch_5
    move-exception v1

    .line 231
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalStateException closing response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 232
    :catch_6
    move-exception v1

    .line 233
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException closing response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public throwUnknownAuthError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 318
    const-string/jumbo v0, "Error code: %s Server response: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractJSONTokenResponse;->_sEntity:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 319
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
.end method
