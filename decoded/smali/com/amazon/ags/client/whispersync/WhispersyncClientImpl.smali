.class public final Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/api/whispersync/WhispersyncClient;


# static fields
.field private static final DEFAULT_QUIET_PERIOD_MS:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "GC_Whispersync"

.field private static final WHISPERSYNC_JAVASCRIPT_LISTENER_ID:Ljava/lang/String; = "whispersyncListener"

.field private static theInstance:Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;


# instance fields
.field private final context:Landroid/content/Context;

.field private eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

.field private final gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

.field private final localStorage:Lcom/amazon/ags/client/whispersync/storage/DiskStorage;

.field private final marshaller:Lcom/amazon/ags/client/whispersync/marshaller/JsonGameDataMarshaller;

.field private migrationManager:Lcom/amazon/ags/client/whispersync/migration/MigrationManager;

.field private final syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

.field private final synchronizationManager:Lcom/amazon/ags/client/whispersync/SynchronizationManager;

.field private final whispersyncEventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ags/storage/StringObfuscator;Lcom/amazon/ags/client/metrics/EventCollectorClient;)V
    .locals 7

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->migrationManager:Lcom/amazon/ags/client/whispersync/migration/MigrationManager;

    .line 106
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->context:Landroid/content/Context;

    .line 107
    iput-object p3, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    .line 108
    new-instance v0, Lcom/amazon/ags/client/whispersync/GameDataSingleMap;

    invoke-direct {v0}, Lcom/amazon/ags/client/whispersync/GameDataSingleMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    .line 109
    new-instance v0, Lcom/amazon/ags/client/whispersync/marshaller/JsonGameDataMarshaller;

    invoke-direct {v0, p3}, Lcom/amazon/ags/client/whispersync/marshaller/JsonGameDataMarshaller;-><init>(Lcom/amazon/ags/client/metrics/EventCollectorClient;)V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->marshaller:Lcom/amazon/ags/client/whispersync/marshaller/JsonGameDataMarshaller;

    .line 110
    new-instance v0, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;

    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->marshaller:Lcom/amazon/ags/client/whispersync/marshaller/JsonGameDataMarshaller;

    invoke-direct {v0, p1, v1, p2}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;-><init>(Landroid/content/Context;Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;Lcom/amazon/ags/storage/StringObfuscator;)V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->localStorage:Lcom/amazon/ags/client/whispersync/storage/DiskStorage;

    .line 111
    new-instance v0, Lcom/amazon/ags/client/whispersync/SyncRequestState;

    invoke-direct {v0}, Lcom/amazon/ags/client/whispersync/SyncRequestState;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

    .line 112
    new-instance v4, Lcom/amazon/ags/client/whispersync/SimpleQuietPeriodListener;

    const-wide/16 v0, 0x32

    invoke-direct {v4, v0, v1}, Lcom/amazon/ags/client/whispersync/SimpleQuietPeriodListener;-><init>(J)V

    .line 113
    new-instance v0, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    invoke-direct {v0}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->whispersyncEventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    .line 114
    new-instance v0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;

    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->localStorage:Lcom/amazon/ags/client/whispersync/storage/DiskStorage;

    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->whispersyncEventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;-><init>(Lcom/amazon/ags/client/whispersync/InternalGameDataMap;Lcom/amazon/ags/client/whispersync/storage/LocalStorage;Lcom/amazon/ags/client/whispersync/SyncRequestState;Lcom/amazon/ags/client/whispersync/QuietPeriodListener;Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;Lcom/amazon/ags/client/metrics/EventCollectorClient;)V

    .line 115
    new-instance v1, Lcom/amazon/ags/client/whispersync/SynchronizationManager;

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->whispersyncEventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/ags/client/whispersync/SynchronizationManager;-><init>(Lcom/amazon/ags/client/whispersync/DiskSynchronizer;Lcom/amazon/ags/client/whispersync/SyncRequestState;Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;)V

    iput-object v1, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->synchronizationManager:Lcom/amazon/ags/client/whispersync/SynchronizationManager;

    .line 116
    return-void
.end method

.method public static getInstance()Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->theInstance:Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    if-nez v0, :cond_0

    .line 99
    const-string/jumbo v0, "Whispersync"

    const-string/jumbo v1, "Whispersync client has not been initialized.  Please call AmazonGames.initialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    sget-object v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->theInstance:Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    return-object v0
.end method

.method public static hasSuccessfullySynchronized()Z
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->theInstance:Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    iget-object v0, v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->localStorage:Lcom/amazon/ags/client/whispersync/storage/DiskStorage;

    invoke-virtual {v0}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->hasSuccessfullySynchronized()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Lcom/amazon/ags/storage/StringObfuscator;Lcom/amazon/ags/client/metrics/EventCollectorClient;)V
    .locals 3

    .prologue
    .line 83
    const-class v1, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->theInstance:Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;-><init>(Landroid/content/Context;Lcom/amazon/ags/storage/StringObfuscator;Lcom/amazon/ags/client/metrics/EventCollectorClient;)V

    sput-object v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->theInstance:Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    .line 85
    sget-object v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->theInstance:Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    invoke-direct {v0}, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->syncMemoryFromDisk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 87
    :cond_1
    :try_start_1
    const-string/jumbo v0, "Whispersync"

    const-string/jumbo v2, "WhispersyncClient has already been initialized"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->theInstance:Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    iget-object v0, v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->localStorage:Lcom/amazon/ags/client/whispersync/storage/DiskStorage;

    invoke-virtual {v0, p1}, Lcom/amazon/ags/client/whispersync/storage/DiskStorage;->setStringObfuscator(Lcom/amazon/ags/storage/StringObfuscator;)V

    .line 89
    sget-object v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->theInstance:Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    iput-object p2, v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    .line 90
    sget-object v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->theInstance:Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    iget-object v0, v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->synchronizationManager:Lcom/amazon/ags/client/whispersync/SynchronizationManager;

    invoke-virtual {v0, p2}, Lcom/amazon/ags/client/whispersync/SynchronizationManager;->setEventCollectorClient(Lcom/amazon/ags/client/metrics/EventCollectorClient;)V

    .line 91
    sget-object v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->theInstance:Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    iget-object v0, v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->migrationManager:Lcom/amazon/ags/client/whispersync/migration/MigrationManager;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->theInstance:Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    iget-object v0, v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->migrationManager:Lcom/amazon/ags/client/whispersync/migration/MigrationManager;

    invoke-virtual {v0, p2}, Lcom/amazon/ags/client/whispersync/migration/MigrationManager;->setEventCollectorClient(Lcom/amazon/ags/client/metrics/EventCollectorClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private reportEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/ags/client/whispersync/metrics/WhispersyncMetricsFactory;->createCountEvent(Ljava/lang/String;I)Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    invoke-virtual {v1, v0}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->reportGenericEvent(Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;)V

    .line 213
    :cond_0
    return-void
.end method

.method private syncMemoryFromDisk()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->synchronizationManager:Lcom/amazon/ags/client/whispersync/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/ags/client/whispersync/SynchronizationManager;->syncFromDiskToMemory()V

    .line 206
    return-void
.end method

.method public static syncPassively()V
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->theInstance:Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;

    iget-object v0, v0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->synchronizationManager:Lcom/amazon/ags/client/whispersync/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/ags/client/whispersync/SynchronizationManager;->syncPassively()V

    .line 217
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->synchronizationManager:Lcom/amazon/ags/client/whispersync/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/ags/client/whispersync/SynchronizationManager;->flush()V

    .line 175
    const-string/jumbo v0, "WHISPERSYNC_MANUAL_FLUSH"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->reportEvent(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public getGameData()Lcom/amazon/ags/api/whispersync/GameDataMap;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->lock()V

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->unlock()V

    throw v0
.end method

.method public migrateVersion1GameData(Lcom/amazon/ags/api/whispersync/migration/MigrationCallback;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->migrationManager:Lcom/amazon/ags/client/whispersync/migration/MigrationManager;

    if-nez v0, :cond_0

    .line 186
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Unable to download version 1.x game data until client is ready.  Please wait for AmazonGamesCallback.onServiceReady()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v0, Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;->FAILURE:Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/amazon/ags/api/whispersync/migration/MigrationCallback;->onComplete(Lcom/amazon/ags/api/whispersync/migration/MigrationResultCode;[B)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->migrationManager:Lcom/amazon/ags/client/whispersync/migration/MigrationManager;

    invoke-virtual {v0, p1}, Lcom/amazon/ags/client/whispersync/migration/MigrationManager;->downloadV1GameData(Lcom/amazon/ags/api/whispersync/migration/MigrationCallback;)V

    goto :goto_0
.end method

.method public setNetworkDependencies(Lcom/amazon/ags/html5/comm/NetworkClient;Lcom/amazon/ags/html5/util/NetworkUtil;Lcom/amazon/ags/client/session/SessionClient;Lorg/apache/http/client/HttpClient;Lcom/amazon/ags/auth/AuthManager;Lcom/amazon/ags/html5/javascript/event/JavascriptEventsManager;)V
    .locals 13

    .prologue
    .line 133
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 134
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/ags/auth/AuthManager;->getGameId()Ljava/lang/String;

    move-result-object v11

    .line 135
    new-instance v1, Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClientImpl;

    invoke-direct {v1, p1, v11}, Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClientImpl;-><init>(Lcom/amazon/ags/html5/comm/NetworkClient;Ljava/lang/String;)V

    .line 136
    new-instance v9, Lcom/amazon/ags/client/whispersync/settings/WebOverlayWhispersyncSettingsManager;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Lcom/amazon/ags/client/whispersync/settings/WebOverlayWhispersyncSettingsManager;-><init>(Lcom/amazon/ags/client/session/SessionClient;)V

    .line 137
    new-instance v2, Lcom/amazon/ags/client/whispersync/clock/ClockSkewSharedPrefs;

    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/amazon/ags/client/whispersync/clock/ClockSkewSharedPrefs;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v3, Lcom/amazon/ags/client/whispersync/clock/LocalClock;

    invoke-direct {v3}, Lcom/amazon/ags/client/whispersync/clock/LocalClock;-><init>()V

    .line 139
    new-instance v12, Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;

    invoke-direct {v12, v3, v2}, Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;-><init>(Lcom/amazon/ags/client/whispersync/clock/Clock;Lcom/amazon/ags/client/whispersync/clock/ClockSkewStorage;)V

    .line 140
    new-instance v4, Lcom/amazon/ags/client/whispersync/storage/CloudStorage;

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->marshaller:Lcom/amazon/ags/client/whispersync/marshaller/JsonGameDataMarshaller;

    invoke-direct {v4, v1, v2, v12}, Lcom/amazon/ags/client/whispersync/storage/CloudStorage;-><init>(Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClient;Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;)V

    .line 141
    new-instance v1, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->localStorage:Lcom/amazon/ags/client/whispersync/storage/DiskStorage;

    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->whispersyncEventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    iget-object v7, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;-><init>(Lcom/amazon/ags/client/whispersync/InternalGameDataMap;Lcom/amazon/ags/client/whispersync/storage/LocalStorage;Lcom/amazon/ags/client/whispersync/storage/RemoteStorage;Lcom/amazon/ags/client/whispersync/SyncRequestState;Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;Lcom/amazon/ags/client/metrics/EventCollectorClient;Lcom/amazon/ags/html5/util/NetworkUtil;Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager;)V

    .line 142
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->synchronizationManager:Lcom/amazon/ags/client/whispersync/SynchronizationManager;

    invoke-virtual {v2, v1}, Lcom/amazon/ags/client/whispersync/SynchronizationManager;->setCloudSynchronizer(Lcom/amazon/ags/client/whispersync/CloudSynchronizer;)V

    .line 143
    new-instance v1, Lcom/amazon/ags/client/whispersync/event/WhispersyncJavascriptEventListener;

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->synchronizationManager:Lcom/amazon/ags/client/whispersync/SynchronizationManager;

    invoke-direct {v1, v2}, Lcom/amazon/ags/client/whispersync/event/WhispersyncJavascriptEventListener;-><init>(Lcom/amazon/ags/client/whispersync/SynchronizationManager;)V

    .line 144
    const-string/jumbo v2, "whispersyncListener"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ags/html5/javascript/event/JavascriptEventsManager;->addEventListener(Ljava/lang/String;Lcom/amazon/ags/html5/javascript/event/JavascriptEventListener;)V

    .line 146
    invoke-static {v12}, Lcom/amazon/ags/client/whispersync/clock/ClockUtil;->setGlobalClock(Lcom/amazon/ags/client/whispersync/clock/Clock;)V

    .line 148
    new-instance v1, Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;

    move-object/from16 v0, p4

    invoke-direct {v1, v10, v11, p1, v0}, Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/html5/comm/NetworkClient;Lorg/apache/http/client/HttpClient;)V

    .line 149
    new-instance v2, Lcom/amazon/ags/client/whispersync/migration/MigrationManager;

    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    invoke-direct {v2, v1, p2, v9, v3}, Lcom/amazon/ags/client/whispersync/migration/MigrationManager;-><init>(Lcom/amazon/ags/client/whispersync/migration/MigrationHttpClient;Lcom/amazon/ags/html5/util/NetworkUtil;Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager;Lcom/amazon/ags/client/metrics/EventCollectorClient;)V

    iput-object v2, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->migrationManager:Lcom/amazon/ags/client/whispersync/migration/MigrationManager;

    .line 150
    return-void
.end method

.method public setWhispersyncEventListener(Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->whispersyncEventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    invoke-virtual {v0, p1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->setWhispersyncEventListener(Lcom/amazon/ags/api/whispersync/WhispersyncEventListener;)V

    .line 181
    return-void
.end method

.method public synchronize()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->synchronizationManager:Lcom/amazon/ags/client/whispersync/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/ags/client/whispersync/SynchronizationManager;->syncActively()V

    .line 169
    const-string/jumbo v0, "WHISPERSYNC_MANUAL_SYNC"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->reportEvent(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public synchronizeOnInitialization()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->synchronizationManager:Lcom/amazon/ags/client/whispersync/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/ags/client/whispersync/SynchronizationManager;->syncActively()V

    .line 164
    return-void
.end method

.method public unpackVersion1MultiFileGameData([BLjava/io/File;)V
    .locals 1

    .prologue
    .line 196
    if-eqz p2, :cond_0

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->migrationManager:Lcom/amazon/ags/client/whispersync/migration/MigrationManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/ags/client/whispersync/migration/MigrationManager;->unpackV1MultiFileGameData([BLjava/io/File;)V

    .line 202
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    goto :goto_0
.end method
