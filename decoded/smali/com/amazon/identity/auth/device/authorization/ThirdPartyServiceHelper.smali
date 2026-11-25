.class public Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final AUTHORIZATION_SERVICE_INTENT_ACTION_NAME:Ljava/lang/String; = "com.amazon.identity.auth.device.authorization.MapAuthorizationService"

.field private static final BINDING_ERROR_MESSAGE:Ljava/lang/String; = "Binding to authorization service has timed out!"

.field private static final CONNECTION_TIMEOUT:J = 0xaL

.field static DEVO_FINGERPRINT:Ljava/lang/String; = null

.field private static final HOST_TYPE:Ljava/lang/String; = "host.type"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static PROD_FINGERPRINT:Ljava/lang/String;

.field private static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->$assertionsDisabled:Z

    .line 38
    const-class v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "2e0b46f8d04a06ac187a2eb0429558fe"

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->DEVO_FINGERPRINT:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "97e83c003bded24445aefd4c72dc4b85"

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->PROD_FINGERPRINT:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->lock:Ljava/lang/Object;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static clearCachedService(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 357
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Clearing Highest Versioned Service"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getConnection()Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getServiceIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->safeUnbind(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/Intent;)V

    .line 364
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V

    .line 366
    :cond_0
    monitor-exit v1

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getRemoteAndroidService(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;
    .locals 3

    .prologue
    .line 469
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;-><init>()V

    .line 470
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Inside getRemoteAndroidService AsyncTask - Attempting remote service"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {v0, p0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->getAuthorizationServiceInstance(Landroid/content/Context;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;

    return-object v0
.end method

.method static isProduction(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 482
    .line 483
    if-eqz p0, :cond_0

    .line 485
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Attempting to parse third party info from meta data"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 489
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 491
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "host.type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 499
    :cond_0
    :goto_0
    return v0

    .line 494
    :catch_0
    move-exception v1

    .line 496
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "NameNotFoundException"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key=host.type  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static isSameSignatureFingerprint(Ljava/lang/String;Landroid/content/pm/Signature;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 227
    :try_start_0
    const-string/jumbo v1, "X.509"

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/appid/APIKeyDecoder;->getSignatureFingerprint(Ljava/lang/String;Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    .line 228
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Expected fingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fingerprint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Extracted fingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fingerprint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 239
    :goto_0
    return v0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "CertificateException getting Fingerprint. "

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    :catch_1
    move-exception v1

    .line 235
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "NoSuchAlgorithmException getting Fingerprint. "

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :catch_2
    move-exception v1

    .line 238
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "IOException getting Fingerprint. "

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static safeUnbind(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 372
    if-eqz p2, :cond_0

    .line 374
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 376
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unbinding pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-eqz p1, :cond_1

    .line 380
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v1

    .line 387
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "IllegalArgumentException is received during unbinding from %s. Ignored."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unbind(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 335
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unbinding Highest Versioned Service"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getConnection()Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getConnection()Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getServiceIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->safeUnbind(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/Intent;)V

    .line 342
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->setService(Landroid/os/IInterface;)V

    .line 343
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->access$100(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;)V

    .line 344
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->setServiceIntent(Landroid/content/Intent;)V

    .line 346
    :cond_0
    monitor-exit v1

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method bindHighestVersionedService(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 245
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->isServiceCacheStale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    .line 248
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object v2

    .line 249
    invoke-static {v2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->access$000(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 250
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 252
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 253
    new-instance v3, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    invoke-direct {v3}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;-><init>()V

    .line 254
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 255
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;-><init>(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;Landroid/content/Intent;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;->setServiceListener(Lcom/amazon/identity/auth/device/authorization/AmazonServiceListener;)V

    .line 273
    invoke-virtual {p1, v4, v3, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 274
    if-eqz v0, :cond_1

    .line 277
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Awaiting latch"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-wide/16 v0, 0xa

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to establish bind within timelimit = 10"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V

    .line 281
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v1, "Binding to authorization service has timed out!"

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_THREAD:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "InterruptedException"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "msg+="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {v7}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V

    .line 287
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v2, "Binding to authorization service has timed out!"

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_THREAD:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1

    .line 292
    :cond_1
    invoke-static {v7}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V

    .line 293
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bind Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "unsuccessful"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v6

    .line 295
    goto/16 :goto_0
.end method

.method findAuthorizationService(Ljava/util/List;)Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;",
            ">;)",
            "Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;"
        }
    .end annotation

    .prologue
    .line 307
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Number of MAP services to compare = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v1, 0x0

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    .line 312
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Returning Primary Service"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_1
    return-object v0

    .line 317
    :cond_0
    if-nez v1, :cond_2

    :cond_1
    :goto_2
    move-object v1, v0

    .line 323
    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getMapVersion()Lcom/amazon/identity/auth/device/utils/MAPVersion;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getMapVersion()Lcom/amazon/identity/auth/device/utils/MAPVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/utils/MAPVersion;->compare(Lcom/amazon/identity/auth/device/utils/MAPVersion;)I

    move-result v3

    if-gtz v3, :cond_1

    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 326
    goto :goto_1
.end method

.method getAllAuthorizationServices(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 161
    :try_start_0
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Verifying signature for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 163
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 164
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->isDevoFingerprint(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->PROD_FINGERPRINT:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->isSameSignatureFingerprint(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Security check failure"

    const-string/jumbo v2, "Signature is incorrect."

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "NameNotFoundException."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_1
    :try_start_1
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Security count failure"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Signature count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ") is incorrect."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 182
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 184
    if-eqz v0, :cond_0

    .line 186
    const-string/jumbo v2, "map.primary"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 187
    const-string/jumbo v2, "map.version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v5, :cond_0

    .line 192
    :cond_3
    if-eqz v5, :cond_5

    sget-object v2, Lcom/amazon/identity/auth/device/utils/MAPVersion;->VERSION_ZERO:Lcom/amazon/identity/auth/device/utils/MAPVersion;

    .line 193
    :goto_1
    new-instance v4, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    invoke-direct {v4}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;-><init>()V

    .line 194
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    const/4 v3, 0x0

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;-><init>(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;Lcom/amazon/identity/auth/device/utils/MAPVersion;Landroid/os/IInterface;Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;ZLandroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    .line 195
    if-eqz v5, :cond_6

    .line 198
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 199
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_4
    return-object v8

    .line 192
    :cond_5
    new-instance v2, Lcom/amazon/identity/auth/device/utils/MAPVersion;

    invoke-direct {v2, v0}, Lcom/amazon/identity/auth/device/utils/MAPVersion;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_6
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getAuthorizationServiceInstance(Landroid/content/Context;)Landroid/os/IInterface;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 115
    sget-boolean v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAuthorizationServiceInstance"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_2

    .line 123
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getConnection()Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getServiceIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->safeUnbind(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->bindHighestVersionedService(Landroid/content/Context;)Z

    move-result v3

    .line 125
    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getService()Landroid/os/IInterface;

    move-result-object v0

    monitor-exit v1

    .line 152
    :goto_0
    return-object v0

    .line 130
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V

    .line 133
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 137
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 138
    const-string/jumbo v3, "com.amazon.identity.auth.device.authorization.MapAuthorizationService"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 140
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Number of services found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0, p1, v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->getAllAuthorizationServices(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 144
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->findAuthorizationService(Ljava/util/List;)Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V

    .line 145
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object v1

    if-nez v1, :cond_3

    .line 147
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Returning no service to use"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 150
    :cond_3
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->bindHighestVersionedService(Landroid/content/Context;)Z

    .line 151
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Returning service to use"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getService()Landroid/os/IInterface;

    move-result-object v0

    goto :goto_0
.end method

.method isDevoFingerprint(Landroid/content/Context;[Landroid/content/pm/Signature;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-static {p1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->isProduction(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->DEVO_FINGERPRINT:Ljava/lang/String;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->isSameSignatureFingerprint(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
