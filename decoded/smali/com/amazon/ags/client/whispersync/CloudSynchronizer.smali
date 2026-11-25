.class public Lcom/amazon/ags/client/whispersync/CloudSynchronizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MIN_TIME_BETWEEN_ACTIVE_SYNCS_MS:J

.field private static final MIN_TIME_BETWEEN_PASSIVE_SYNCS_MS:J

.field private static final TAG:Ljava/lang/String; = "GC_Whispersync"


# instance fields
.field private final cloudStorage:Lcom/amazon/ags/client/whispersync/storage/RemoteStorage;

.field private eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

.field private final eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

.field private final gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

.field private final localStorage:Lcom/amazon/ags/client/whispersync/storage/LocalStorage;

.field private final networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

.field private priorSyncTime:J

.field private final settingsManager:Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager;

.field private final syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->MIN_TIME_BETWEEN_ACTIVE_SYNCS_MS:J

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->MIN_TIME_BETWEEN_PASSIVE_SYNCS_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/client/whispersync/InternalGameDataMap;Lcom/amazon/ags/client/whispersync/storage/LocalStorage;Lcom/amazon/ags/client/whispersync/storage/RemoteStorage;Lcom/amazon/ags/client/whispersync/SyncRequestState;Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;Lcom/amazon/ags/client/metrics/EventCollectorClient;Lcom/amazon/ags/html5/util/NetworkUtil;Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    .line 62
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->localStorage:Lcom/amazon/ags/client/whispersync/storage/LocalStorage;

    .line 63
    iput-object p3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->cloudStorage:Lcom/amazon/ags/client/whispersync/storage/RemoteStorage;

    .line 64
    iput-object p4, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

    .line 65
    iput-object p5, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    .line 66
    iput-object p6, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    .line 67
    iput-object p7, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

    .line 68
    iput-object p8, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->settingsManager:Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager;

    .line 69
    return-void
.end method

.method private downloadFromCloud()V
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/util/NetworkUtil;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Cannot sync with cloud because network is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v1, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->OFFLINE:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    .line 145
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->settingsManager:Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager;

    invoke-interface {v0}, Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager;->isWhispersyncEnabled()Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;->NO:Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;

    if-ne v0, v1, :cond_1

    .line 117
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Cannot sync with cloud because Whispersync is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v1, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->DISABLED:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    goto :goto_0

    .line 120
    :cond_1
    sget-object v1, Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;->MAYBE:Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;

    if-ne v0, v1, :cond_2

    .line 121
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Cannot determine whether Whispersync is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v1, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->ERROR_CLIENT:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 127
    const-string/jumbo v2, "GC_Whispersync"

    const-string/jumbo v3, "Download from cloud started"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->cloudStorage:Lcom/amazon/ags/client/whispersync/storage/RemoteStorage;

    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->localStorage:Lcom/amazon/ags/client/whispersync/storage/LocalStorage;

    invoke-interface {v3}, Lcom/amazon/ags/client/whispersync/storage/LocalStorage;->getVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/ags/client/whispersync/storage/RemoteStorage;->retrieve(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/storage/GameData;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lcom/amazon/ags/client/whispersync/storage/GameData;->getGameDataMap()Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 130
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    invoke-virtual {v2}, Lcom/amazon/ags/client/whispersync/storage/GameData;->getGameDataMap()Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/ags/client/whispersync/InternalGameDataMap;->merge(Lcom/amazon/ags/client/whispersync/model/Mergeable;)V

    .line 131
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/amazon/ags/client/whispersync/SyncRequestState;->setDiskWriteRequested(Z)V

    .line 132
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v4, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->NEW_DATA_FROM_CLOUD:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v3, v4}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    .line 133
    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->notifyJniNewCloudData()V

    .line 134
    const-string/jumbo v3, "GC_Whispersync"

    const-string/jumbo v4, "Download from cloud completed - New game data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_1
    invoke-virtual {v2}, Lcom/amazon/ags/client/whispersync/storage/GameData;->getVersionId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 141
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->localStorage:Lcom/amazon/ags/client/whispersync/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/amazon/ags/client/whispersync/storage/GameData;->getVersionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/amazon/ags/client/whispersync/storage/LocalStorage;->putVersionId(Ljava/lang/String;)V

    .line 143
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 144
    const-string/jumbo v4, "WHISPERSYNC_DOWNLOAD_FROM_CLOUD"

    sub-long v0, v2, v0

    invoke-direct {p0, v4, v0, v1}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->reportTimeEvent(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 136
    :cond_4
    const-string/jumbo v3, "GC_Whispersync"

    const-string/jumbo v4, "Download from cloud completed - No new game data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private hasSuccessfullySynchronized()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->localStorage:Lcom/amazon/ags/client/whispersync/storage/LocalStorage;

    invoke-interface {v0}, Lcom/amazon/ags/client/whispersync/storage/LocalStorage;->hasSuccessfullySynchronized()Z

    move-result v0

    return v0
.end method

.method private notifyJniNewCloudData()V
    .locals 2

    .prologue
    .line 231
    :try_start_0
    invoke-static {}, Lcom/amazon/ags/jni/whispersync/WhispersyncJni;->onNewCloudData()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "GameCircle JNI library not loaded, cannot call WhispersyncJni"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportCountEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/ags/client/whispersync/metrics/WhispersyncMetricsFactory;->createCountEvent(Ljava/lang/String;I)Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    invoke-virtual {v1, v0}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->reportGenericEvent(Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;)V

    .line 249
    :cond_0
    return-void
.end method

.method private reportTimeEvent(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/ags/client/whispersync/metrics/WhispersyncMetricsFactory;->createGenericEvent(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    invoke-virtual {v1, v0}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->reportGenericEvent(Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;)V

    .line 242
    :cond_0
    return-void
.end method

.method private sleepWhileThrottled()V
    .locals 5

    .prologue
    .line 214
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

    invoke-virtual {v0}, Lcom/amazon/ags/client/whispersync/SyncRequestState;->isActiveCloudWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->MIN_TIME_BETWEEN_ACTIVE_SYNCS_MS:J

    .line 215
    :goto_0
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amazon/ags/client/whispersync/SyncRequestState;->setActiveCloudWrite(Z)V

    .line 216
    iget-wide v2, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->priorSyncTime:J

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 217
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 219
    :try_start_0
    const-string/jumbo v2, "GC_Whispersync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Throttling network request.  Retrying in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " msec."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v3, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->THROTTLED:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v2, v3}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    .line 221
    const-string/jumbo v2, "WHISPERSYNC_CLOUD_SYNC_THROTTLED"

    invoke-direct {p0, v2}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->reportCountEvent(Ljava/lang/String;)V

    .line 222
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_1
    return-void

    .line 214
    :cond_1
    sget-wide v0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->MIN_TIME_BETWEEN_PASSIVE_SYNCS_MS:J

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method private uploadToCloud()V
    .locals 6

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->sleepWhileThrottled()V

    .line 151
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/util/NetworkUtil;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Cannot sync with cloud because network is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v1, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->OFFLINE:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    .line 207
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->settingsManager:Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager;

    invoke-interface {v0}, Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager;->isWhispersyncEnabled()Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;

    move-result-object v0

    .line 158
    sget-object v1, Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;->NO:Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;

    if-ne v0, v1, :cond_1

    .line 159
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Cannot sync with cloud because Whispersync is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v1, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->DISABLED:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    goto :goto_0

    .line 162
    :cond_1
    sget-object v1, Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;->MAYBE:Lcom/amazon/ags/client/whispersync/settings/WhispersyncUserSettingsManager$YesNoMaybe;

    if-ne v0, v1, :cond_2

    .line 163
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Cannot determine whether Whispersync is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v1, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->ERROR_CLIENT:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    goto :goto_0

    .line 168
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 169
    const-string/jumbo v2, "GC_Whispersync"

    const-string/jumbo v3, "Upload to cloud started"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->localStorage:Lcom/amazon/ags/client/whispersync/storage/LocalStorage;

    invoke-interface {v2}, Lcom/amazon/ags/client/whispersync/storage/LocalStorage;->getVersionId()Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/amazon/ags/client/whispersync/SyncRequestState;->setCloudWriteRequested(Z)V

    .line 178
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    invoke-interface {v3}, Lcom/amazon/ags/client/whispersync/InternalGameDataMap;->startSyncing()V

    .line 181
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    invoke-interface {v3}, Lcom/amazon/ags/client/whispersync/InternalGameDataMap;->lockAndCopy()Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    move-result-object v3

    .line 183
    new-instance v4, Lcom/amazon/ags/client/whispersync/storage/GameData;

    invoke-direct {v4, v3, v2}, Lcom/amazon/ags/client/whispersync/storage/GameData;-><init>(Lcom/amazon/ags/client/whispersync/InternalGameDataMap;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->cloudStorage:Lcom/amazon/ags/client/whispersync/storage/RemoteStorage;

    invoke-interface {v2, v4}, Lcom/amazon/ags/client/whispersync/storage/RemoteStorage;->save(Lcom/amazon/ags/client/whispersync/storage/GameData;)Lcom/amazon/ags/client/whispersync/storage/GameData;

    move-result-object v2

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->priorSyncTime:J

    .line 186
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v4, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->DATA_UPLOADED_TO_CLOUD:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v3, v4}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    .line 187
    invoke-virtual {v2}, Lcom/amazon/ags/client/whispersync/storage/GameData;->getGameDataMap()Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/amazon/ags/client/whispersync/storage/GameData;->getGameDataMap()Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/ags/client/whispersync/InternalGameDataMap;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 189
    const-string/jumbo v3, "GC_Whispersync"

    const-string/jumbo v4, "Upload to cloud resulted in new data merged from another device!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    invoke-virtual {v2}, Lcom/amazon/ags/client/whispersync/storage/GameData;->getGameDataMap()Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/ags/client/whispersync/InternalGameDataMap;->merge(Lcom/amazon/ags/client/whispersync/model/Mergeable;)V

    .line 191
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/amazon/ags/client/whispersync/SyncRequestState;->setDiskWriteRequested(Z)V

    .line 192
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v4, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->NEW_DATA_FROM_CLOUD:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v3, v4}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    .line 193
    const-string/jumbo v3, "WHISPERSYNC_MERGE_ON_UPLOAD"

    invoke-direct {p0, v3}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->reportCountEvent(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->notifyJniNewCloudData()V

    .line 198
    :goto_1
    invoke-virtual {v2}, Lcom/amazon/ags/client/whispersync/storage/GameData;->getVersionId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->localStorage:Lcom/amazon/ags/client/whispersync/storage/LocalStorage;

    invoke-virtual {v2}, Lcom/amazon/ags/client/whispersync/storage/GameData;->getVersionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/amazon/ags/client/whispersync/storage/LocalStorage;->putVersionId(Ljava/lang/String;)V

    .line 202
    :cond_3
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    invoke-interface {v2}, Lcom/amazon/ags/client/whispersync/InternalGameDataMap;->completeSyncing()V

    .line 204
    const-string/jumbo v2, "GC_Whispersync"

    const-string/jumbo v3, "Upload to cloud completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 206
    const-string/jumbo v4, "WHISPERSYNC_UPLOAD_TO_CLOUD"

    sub-long v0, v2, v0

    invoke-direct {p0, v4, v0, v1}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->reportTimeEvent(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 196
    :cond_4
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v4, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->ALREADY_SYNCED:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v3, v4}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    goto :goto_1
.end method


# virtual methods
.method public setEventCollectorClient(Lcom/amazon/ags/client/metrics/EventCollectorClient;)V
    .locals 0

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    .line 106
    :cond_0
    return-void
.end method

.method public syncToCloud()V
    .locals 3

    .prologue
    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->hasSuccessfullySynchronized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->uploadToCloud()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Never synced from cloud.  Attempting initial download and merge."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->downloadFromCloud()V

    .line 78
    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->hasSuccessfullySynchronized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v1, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->FIRST_SYNC:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    .line 80
    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->uploadToCloud()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/ags/AGSClientException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/ags/AGSServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/amazon/ags/html5/comm/ConnectionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v2, "Unable to perform full sync."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v1, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->ERROR_CLIENT:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    .line 86
    const-string/jumbo v0, "WHISPERSYNC_CLOUD_SYNC_IO_EXCEPTION"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->reportCountEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :catch_1
    move-exception v0

    .line 88
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v2, "Unable to perform full sync."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v1, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->ERROR_CLIENT:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    .line 90
    const-string/jumbo v0, "WHISPERSYNC_CLOUD_SYNC_CLIENT_EXCEPTION"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->reportCountEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :catch_2
    move-exception v0

    .line 92
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v2, "Unable to perform full sync."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v1, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->ERROR_SERVICE:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    .line 94
    const-string/jumbo v0, "WHISPERSYNC_CLOUD_SYNC_SERVER_EXCEPTION"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->reportCountEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :catch_3
    move-exception v0

    .line 96
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v2, "Unable to perform full sync due to Network Connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->eventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v1, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->OFFLINE:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V

    .line 98
    const-string/jumbo v0, "WHISPERSYNC_CLOUD_SYNC_NETWORK_EXCEPTION"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/CloudSynchronizer;->reportCountEvent(Ljava/lang/String;)V

    goto :goto_0
.end method
