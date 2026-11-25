.class public Lcom/amazon/ags/auth/AuthManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinatorListener;


# static fields
.field private static final GC_GAME_DATA_SCOPE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile activity:Landroid/app/Activity;

.field private authorizationManager:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

.field private final clientConfig:Lcom/amazon/ags/html5/util/ClientConfig;

.field private gameId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/auth/AuthManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/auth/AuthManager;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "game_circle:game_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/ags/auth/AuthManager;->GC_GAME_DATA_SCOPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/html5/util/ClientConfig;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v2, p0, Lcom/amazon/ags/auth/AuthManager;->gameId:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getInstance()Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->addAGSClientInstanceCoordinatorListener(Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinatorListener;)V

    .line 40
    invoke-static {}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getInstance()Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/auth/AuthManager;->activity:Landroid/app/Activity;

    .line 41
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    iget-object v1, p0, Lcom/amazon/ags/auth/AuthManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/amazon/ags/auth/AuthManager;->authorizationManager:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    .line 42
    iput-object p1, p0, Lcom/amazon/ags/auth/AuthManager;->clientConfig:Lcom/amazon/ags/html5/util/ClientConfig;

    .line 43
    return-void
.end method

.method private declared-synchronized refreshActivity()V
    .locals 3

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/auth/AuthManager;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getInstance()Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 52
    invoke-static {}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getInstance()Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ags/html5/factory/AGSClientInstanceCoordinator;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/auth/AuthManager;->activity:Landroid/app/Activity;

    .line 53
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    iget-object v1, p0, Lcom/amazon/ags/auth/AuthManager;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/amazon/ags/auth/AuthManager;->authorizationManager:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/ags/auth/AuthManager;->gameId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/ags/auth/AuthManager;->refreshActivity()V

    .line 71
    iget-object v0, p0, Lcom/amazon/ags/auth/AuthManager;->authorizationManager:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/auth/AuthManager;->gameId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/ags/auth/AuthManager;->gameId:Ljava/lang/String;

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    sget-object v1, Lcom/amazon/ags/auth/AuthManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to get game id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/amazon/ags/auth/AuthManager;->tryGetToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/amazon/ags/auth/AuthManager;->refreshActivity()V

    .line 120
    iget-object v0, p0, Lcom/amazon/ags/auth/AuthManager;->authorizationManager:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->clearAuthorizationState(Lcom/amazon/identity/auth/device/shared/APIListener;)Ljava/util/concurrent/Future;

    .line 121
    return-void
.end method

.method public declared-synchronized notifyCurrentActivityChanged(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amazon/ags/auth/AuthManager;->refreshActivity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryGetToken()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Lcom/amazon/ags/auth/AuthManager;->refreshActivity()V

    .line 85
    iget-object v0, p0, Lcom/amazon/ags/auth/AuthManager;->authorizationManager:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    sget-object v1, Lcom/amazon/ags/auth/AuthManager;->GC_GAME_DATA_SCOPE:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->getToken([Ljava/lang/String;Lcom/amazon/identity/auth/device/shared/APIListener;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/amazon/ags/auth/AuthManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getToken returned null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 111
    :goto_0
    return-object v0

    .line 91
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/ags/auth/AuthManager;->clientConfig:Lcom/amazon/ags/html5/util/ClientConfig;

    const-string/jumbo v3, "AUTH_GET_TOKEN_TIMEOUT_MILLIS"

    invoke-virtual {v1, v3}, Lcom/amazon/ags/html5/util/ClientConfig;->get(Ljava/lang/String;)J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 92
    if-nez v0, :cond_1

    .line 93
    sget-object v0, Lcom/amazon/ags/auth/AuthManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getToken Future returned null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 94
    goto :goto_0

    .line 97
    :cond_1
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->FUTURE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    .line 98
    sget-object v3, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->SUCCESS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    if-ne v1, v3, :cond_2

    .line 99
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->TOKEN:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_2
    sget-object v0, Lcom/amazon/ags/auth/AuthManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToken failed with code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v2

    .line 102
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    sget-object v1, Lcom/amazon/ags/auth/AuthManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getToken was interrupted"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v0, v2

    .line 111
    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    sget-object v1, Lcom/amazon/ags/auth/AuthManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getToken failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 108
    :catch_2
    move-exception v0

    .line 109
    sget-object v1, Lcom/amazon/ags/auth/AuthManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getToken timed out"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public tryLogin(Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->BROWSER_AUTHORIZATION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    invoke-direct {p0}, Lcom/amazon/ags/auth/AuthManager;->refreshActivity()V

    .line 140
    iget-object v1, p0, Lcom/amazon/ags/auth/AuthManager;->authorizationManager:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    sget-object v2, Lcom/amazon/ags/auth/AuthManager;->GC_GAME_DATA_SCOPE:[Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p1}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->authorize([Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)Ljava/util/concurrent/Future;

    .line 141
    return-void
.end method
