.class public final Lcom/amazon/identity/auth/device/endpoint/TokenVendor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->$assertionsDisabled:Z

    .line 36
    const-class v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    .line 42
    return-void
.end method

.method private static getCommonAccessToken([Lcom/amazon/identity/auth/device/dataobject/RequestedScope;Landroid/content/Context;)Lcom/amazon/identity/auth/device/token/AccessAtzToken;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 415
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Try finding a common access token for requested scopes"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    sget-boolean v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 419
    :cond_1
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    move-result-object v3

    .line 422
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationAccessTokenId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findById(J)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    .line 423
    if-nez v0, :cond_2

    move-object v0, v2

    .line 436
    :goto_0
    return-object v0

    .line 427
    :cond_2
    const/4 v1, 0x1

    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_5

    .line 428
    aget-object v4, p0, v1

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationAccessTokenId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findById(J)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v4

    .line 429
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getRowId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getRowId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 430
    :cond_3
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Common access token not found!"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 431
    goto :goto_0

    .line 427
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 435
    :cond_5
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Common access token found."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accessAtzToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getCommonRefreshToken([Lcom/amazon/identity/auth/device/dataobject/RequestedScope;Landroid/content/Context;)Lcom/amazon/identity/auth/device/token/RefreshAtzToken;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 445
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Try finding a common refresh token for requested scopes"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    sget-boolean v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 449
    :cond_1
    invoke-static {p1}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    move-result-object v3

    .line 452
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationRefreshTokenId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findById(J)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    .line 453
    if-nez v0, :cond_2

    move-object v0, v2

    .line 466
    :goto_0
    return-object v0

    .line 457
    :cond_2
    const/4 v1, 0x1

    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_5

    .line 458
    aget-object v4, p0, v1

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationRefreshTokenId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findById(J)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v4

    .line 459
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getRowId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->getRowId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 460
    :cond_3
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Common refresh token not found!"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 461
    goto :goto_0

    .line 457
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 465
    :cond_5
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Common refresh token found."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshAtzToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getTokenFromService(Landroid/content/Context;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;
    .locals 14

    .prologue
    .line 365
    const/4 v13, 0x0

    .line 367
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    invoke-interface {v0, v4, v1, v2}, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;->getToken(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 368
    if-eqz v4, :cond_2

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 371
    const-string/jumbo v5, "accessAtzToken"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 372
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 374
    const-string/jumbo v5, "accessAtzToken.expiries_in"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 375
    new-instance v5, Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-object/from16 v6, p4

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v12}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J[B)V

    .line 406
    :goto_0
    return-object v5

    .line 379
    :cond_0
    const-string/jumbo v5, "AUTH_ERROR_EXECEPTION"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/amazon/identity/auth/device/AuthError;

    .line 380
    if-eqz v4, :cond_1

    sget-object v5, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_INVALID_TOKEN:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/AuthError;->getType()Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 382
    sget-object v4, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Invalid token given to the service. Cleaning up local state"

    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v13

    goto :goto_0

    .line 386
    :cond_1
    if-eqz v4, :cond_3

    .line 388
    sget-object v5, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AuthError from service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {p0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->clearCachedService(Landroid/content/Context;)V

    .line 391
    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :catch_0
    move-exception v4

    .line 403
    invoke-static {p0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->clearCachedService(Landroid/content/Context;)V

    .line 404
    sget-object v5, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RemoteException on getToken. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    move-object v5, v13

    goto :goto_0

    .line 395
    :cond_3
    :try_start_1
    sget-object v4, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "No results from service"

    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static insertNewToken(Landroid/content/Context;Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;[Lcom/amazon/identity/auth/device/dataobject/RequestedScope;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;)V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 165
    invoke-virtual {p4, p0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->insert(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inserting token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed unexpectedly!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inserted new token: rowid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getRowId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, p2, v1

    .line 173
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getRowId()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    .line 174
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getRowId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationAccessTokenId(J)V

    .line 175
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->getRowId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationRefreshTokenId(J)V

    .line 176
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Inserting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : rowid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, p0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->insert(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationAccessTokenId()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findByRowId(J)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    .line 180
    if-eqz v0, :cond_2

    .line 181
    sget-object v4, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Deleting old access token."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "accessAtzToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->delete(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_2
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getRowId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationAccessTokenId(J)V

    .line 184
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Updating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, p0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->update(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationRefreshTokenId()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findByRowId(J)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    .line 187
    if-eqz v0, :cond_3

    .line 188
    sget-object v4, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Deleting old refresh token."

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "refreshAtzToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->delete(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_3
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getRowId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationAccessTokenId(J)V

    .line 191
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Updating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, p0}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->update(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 194
    :cond_4
    return-void
.end method

.method private updateExistingToken(Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 294
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Updating existing token"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v8, 0x0

    .line 298
    if-eqz p1, :cond_4

    .line 300
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p3

    move-object/from16 v8, p8

    invoke-virtual/range {v2 .. v8}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;->getAuthorizationTokens(Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v2

    .line 301
    const/4 v3, 0x0

    aget-object v8, v2, v3

    .line 302
    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-eqz v3, :cond_6

    .line 304
    sget-object v3, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Refresh token"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v3, 0x1

    aget-object v3, v2, v3

    move-object/from16 v0, p8

    invoke-virtual {p0, v3, p1, v0}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->updateExistingRefreshToken(Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;Landroid/content/Context;)V

    .line 306
    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    move-object v7, v2

    .line 309
    :goto_0
    if-eqz v8, :cond_1

    .line 311
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Refreshed token"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v2, 0x0

    .line 313
    if-eqz p6, :cond_2

    .line 315
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getRowId()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->setRowId(J)V

    .line 321
    :goto_1
    invoke-static/range {p8 .. p8}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->deleteAllRows()I

    .line 322
    move-object/from16 v0, p8

    invoke-virtual {v8, v0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->insertOrUpdate(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    if-eqz v2, :cond_0

    .line 325
    move-object v0, v8

    check-cast v0, Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    move-object v6, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p8

    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->updateRequestedScopes(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;)V

    .line 327
    :cond_0
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Update success!"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_1
    :goto_2
    invoke-static/range {p8 .. p8}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->unbind(Landroid/content/Context;)V

    .line 353
    if-eqz v8, :cond_5

    .line 355
    invoke-virtual {v8}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    .line 358
    :goto_3
    return-object v2

    .line 319
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 330
    :cond_3
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Updating token failed unexpectedly!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    :catchall_0
    move-exception v2

    invoke-static/range {p8 .. p8}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->unbind(Landroid/content/Context;)V

    throw v2

    .line 337
    :cond_4
    :try_start_2
    invoke-static/range {p8 .. p8}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->getRemoteAndroidService(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;

    move-result-object v9

    .line 340
    if-eqz v9, :cond_1

    .line 343
    invoke-static/range {p8 .. p8}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->clearAuthorizationState(Landroid/content/Context;)V

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p7

    .line 345
    invoke-static/range {v2 .. v9}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getTokenFromService(Landroid/content/Context;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;)Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    goto :goto_2

    .line 358
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    move-object v7, p1

    goto/16 :goto_0
.end method

.method private updateRequestedScopes(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;)V
    .locals 10

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getRequestedScopes(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)[Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    move-result-object v2

    .line 263
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 264
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getRowId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getRowId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationAccessTokenId(J)V

    .line 266
    invoke-virtual {p5}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->getRowId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationRefreshTokenId(J)V

    .line 267
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Inserting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : rowid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, p3}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->insert(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p4, p3}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    move-result-object v0

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationAccessTokenId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findByRowId(J)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    .line 271
    if-eqz v0, :cond_1

    .line 272
    sget-object v5, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Deleting old access token."

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "accessAtzToken="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, p3}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->delete(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getRowId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationAccessTokenId(J)V

    .line 275
    invoke-virtual {p5, p3}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->getDataSource(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    move-result-object v0

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->getAuthorizationRefreshTokenId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->findByRowId(J)Lcom/amazon/identity/auth/device/dataobject/AbstractDataObject;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    .line 276
    if-eqz v0, :cond_2

    .line 277
    sget-object v5, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Deleting old refresh token "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "refreshAtzToken="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, p3}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->delete(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_2
    invoke-virtual {p5}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->getRowId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->setAuthorizationRefreshTokenId(J)V

    .line 280
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Updating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, p3}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;->update(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 283
    :cond_3
    return-void
.end method


# virtual methods
.method public getCachedScopes(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/identity/auth/device/dataobject/RequestedScope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p3}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->findAllRows()Ljava/util/List;

    move-result-object v0

    .line 109
    return-object v0
.end method

.method public getRequestedScopes(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)[Lcom/amazon/identity/auth/device/dataobject/RequestedScope;
    .locals 6

    .prologue
    .line 93
    array-length v0, p3

    new-array v1, v0, [Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    .line 94
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 95
    invoke-static {p4}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v2, v3, p2, p1}, Lcom/amazon/identity/auth/device/datastore/RequestedScopeDataSource;->findByPrimaryKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_0

    .line 97
    aput-object v2, v1, v0

    .line 94
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    sget-object v3, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RequestedScope shouldn\'t be null!!!! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", but continuing anyway..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v2, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    aget-object v3, p3, v0

    invoke-direct {v2, v3, p2, p1}, Lcom/amazon/identity/auth/device/dataobject/RequestedScope;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    goto :goto_1

    .line 104
    :cond_1
    return-object v1
.end method

.method public insertTokens(Landroid/content/Context;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 471
    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->insert(Landroid/content/Context;)J

    move-result-wide v0

    .line 472
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 473
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v1, "Unable to insert access atz token into db"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0

    .line 477
    :cond_0
    invoke-virtual {p2, v0, v1}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->setId(J)V

    .line 479
    invoke-virtual {p3, p1}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->insert(Landroid/content/Context;)J

    move-result-wide v0

    .line 480
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 481
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v1, "Unable to insert refresh token into db"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0

    .line 485
    :cond_1
    invoke-virtual {p3, v0, v1}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->setId(J)V

    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 487
    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->updateRequestedScopes(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;)V

    .line 488
    return-void
.end method

.method public setServerCommunication(Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    .line 52
    return-void
.end method

.method public updateExistingRefreshToken(Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 498
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getRowId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->setRowId(J)V

    .line 499
    invoke-virtual {p1, p3}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->update(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Updating token failed unexpectedly!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    return-void
.end method

.method public vendNewToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 121
    sget-boolean v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    array-length v0, p4

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 123
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Vending new token"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {p5}, Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;

    move-result-object v7

    .line 127
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getRequestedScopes(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)[Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    move-result-object v8

    .line 130
    invoke-static {v8, p5}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getCommonRefreshToken([Lcom/amazon/identity/auth/device/dataobject/RequestedScope;Landroid/content/Context;)Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_3

    .line 135
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;->getAuthorizationTokens(Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v2

    .line 137
    const/4 v0, 0x1

    aget-object v0, v2, v0

    if-eqz v0, :cond_4

    .line 138
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->getRowId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->setRowId(J)V

    .line 139
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {p0, v0, v1, p5}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->updateExistingRefreshToken(Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;Landroid/content/Context;)V

    .line 140
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    .line 143
    :goto_0
    const/4 v1, 0x0

    aget-object v1, v2, v1

    if-eqz v1, :cond_2

    .line 145
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {p5, v7, v8, v0, v1}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->insertNewToken(Landroid/content/Context;Lcom/amazon/identity/auth/device/datastore/AuthorizationTokenDataSource;[Lcom/amazon/identity/auth/device/dataobject/RequestedScope;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;)V

    .line 147
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_1
    return-object v0

    .line 152
    :cond_2
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Token returned from Exchange was null. Clearing authorization state"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {p5}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->clearAuthorizationState(Landroid/content/Context;)V

    .line 156
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public vendNewTokensFromCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 206
    sget-boolean v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    array-length v0, p5

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 208
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Vending new tokens from Code"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->mServerCommunication:Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/identity/auth/device/endpoint/ServerCommunication;->getTokensFromCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)[Lcom/amazon/identity/auth/device/dataobject/AuthorizationToken;

    move-result-object v0

    .line 212
    if-nez v0, :cond_2

    .line 214
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v0, "No tokens returned"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v0, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/AuthError;->getErrorBundle(Lcom/amazon/identity/auth/device/AuthError;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 244
    :goto_0
    return-object v0

    .line 217
    :cond_2
    const/4 v1, 0x0

    aget-object v4, v0, v1

    check-cast v4, Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    .line 219
    if-nez v4, :cond_3

    .line 221
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v0, "Access Atz token was null form ServerCommunication"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v0, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    .line 222
    new-instance v0, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/AuthError;->getErrorBundle(Lcom/amazon/identity/auth/device/AuthError;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {v4, p6}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->insert(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-nez v1, :cond_4

    .line 225
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v0, "Unable to insert access atz token into db"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v0, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    .line 226
    new-instance v0, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/AuthError;->getErrorBundle(Lcom/amazon/identity/auth/device/AuthError;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 229
    :cond_4
    const/4 v1, 0x1

    aget-object v5, v0, v1

    check-cast v5, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    .line 230
    if-nez v5, :cond_5

    .line 232
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v0, "access token was null form ServerCommunication"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v0, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/AuthError;->getErrorBundle(Lcom/amazon/identity/auth/device/AuthError;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 235
    :cond_5
    invoke-virtual {v5, p6}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->insert(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 236
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v0, "Unable to insert refresh token into db"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_DATA_STORAGE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v0, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/AuthError;->getErrorBundle(Lcom/amazon/identity/auth/device/AuthError;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    move-object v0, p0

    move-object v1, p3

    move-object v2, p5

    move-object v3, p6

    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->updateRequestedScopes(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;)V

    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->AUTHORIZE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    const-string/jumbo v2, "authorized"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public vendToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 71
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Vending out token: appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", scopes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "directedId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-boolean v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    array-length v0, p4

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_1
    invoke-virtual {p0, p2, p3, p4, p6}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getRequestedScopes(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)[Lcom/amazon/identity/auth/device/dataobject/RequestedScope;

    move-result-object v0

    .line 79
    invoke-static {v0, p6}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getCommonAccessToken([Lcom/amazon/identity/auth/device/dataobject/RequestedScope;Landroid/content/Context;)Lcom/amazon/identity/auth/device/token/AccessAtzToken;

    move-result-object v6

    .line 80
    invoke-static {v0, p6}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->getCommonRefreshToken([Lcom/amazon/identity/auth/device/dataobject/RequestedScope;Landroid/content/Context;)Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    move-result-object v1

    .line 81
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->isRemainingLifeAcceptable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Common token still has acceptable life, returning it back to caller"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/token/AccessAtzToken;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_2
    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/amazon/identity/auth/device/endpoint/TokenVendor;->updateExistingToken(Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/identity/auth/device/token/AccessAtzToken;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
