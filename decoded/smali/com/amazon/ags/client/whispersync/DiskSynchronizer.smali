.class public Lcom/amazon/ags/client/whispersync/DiskSynchronizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GC_Whispersync"


# instance fields
.field private eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

.field private final gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

.field private final localStorage:Lcom/amazon/ags/client/whispersync/storage/LocalStorage;

.field private final quietListener:Lcom/amazon/ags/client/whispersync/QuietPeriodListener;

.field private final syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

.field private final whispersyncEventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;


# direct methods
.method public constructor <init>(Lcom/amazon/ags/client/whispersync/InternalGameDataMap;Lcom/amazon/ags/client/whispersync/storage/LocalStorage;Lcom/amazon/ags/client/whispersync/SyncRequestState;Lcom/amazon/ags/client/whispersync/QuietPeriodListener;Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;Lcom/amazon/ags/client/metrics/EventCollectorClient;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    .line 43
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->localStorage:Lcom/amazon/ags/client/whispersync/storage/LocalStorage;

    .line 44
    iput-object p3, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

    .line 45
    iput-object p4, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->quietListener:Lcom/amazon/ags/client/whispersync/QuietPeriodListener;

    .line 46
    iput-object p5, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->whispersyncEventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    .line 47
    iput-object p6, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    .line 48
    return-void
.end method

.method private reportBooleanEvent(Ljava/lang/String;JZ)V
    .locals 4

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/ags/client/whispersync/metrics/WhispersyncMetricsFactory;->createBooleanGenericEvent(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    invoke-virtual {v1, v0}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->reportGenericEvent(Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;)V

    .line 118
    :cond_0
    return-void
.end method

.method private reportCountEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/ags/client/whispersync/metrics/WhispersyncMetricsFactory;->createCountEvent(Ljava/lang/String;I)Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    invoke-virtual {v1, v0}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->reportGenericEvent(Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;)V

    .line 132
    :cond_0
    return-void
.end method

.method private reportTimeEvent(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/ags/client/whispersync/metrics/WhispersyncMetricsFactory;->createGenericEvent(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    invoke-virtual {v1, v0}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->reportGenericEvent(Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;)V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public loadFromDisk()V
    .locals 10

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 59
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Initial load from disk started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->localStorage:Lcom/amazon/ags/client/whispersync/storage/LocalStorage;

    invoke-interface {v1}, Lcom/amazon/ags/client/whispersync/storage/LocalStorage;->retrieve()Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    move-result-object v1

    .line 66
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    invoke-interface {v4, v1}, Lcom/amazon/ags/client/whispersync/InternalGameDataMap;->merge(Lcom/amazon/ags/client/whispersync/model/Mergeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/ags/AGSClientException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    const/4 v0, 0x1

    .line 75
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 76
    const-string/jumbo v1, "GC_Whispersync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Initial load from disk completed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v4, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " msec."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string/jumbo v1, "WHISPERSYNC_DISK_TO_MEMORY_SYNC"

    sub-long v2, v4, v2

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->reportBooleanEvent(Ljava/lang/String;JZ)V

    .line 78
    :goto_1
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v2, "Initial load from disk failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 71
    :catch_1
    move-exception v1

    .line 72
    const-string/jumbo v4, "GC_Whispersync"

    const-string/jumbo v5, "Initial load from disk failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyDataChanged()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->quietListener:Lcom/amazon/ags/client/whispersync/QuietPeriodListener;

    invoke-interface {v0}, Lcom/amazon/ags/client/whispersync/QuietPeriodListener;->breakSilence()V

    .line 55
    return-void
.end method

.method public setEventCollectorClient(Lcom/amazon/ags/client/metrics/EventCollectorClient;)V
    .locals 0

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    .line 110
    :cond_0
    return-void
.end method

.method public syncToDisk()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->quietListener:Lcom/amazon/ags/client/whispersync/QuietPeriodListener;

    invoke-interface {v0}, Lcom/amazon/ags/client/whispersync/QuietPeriodListener;->blockUntilQuiet()V

    .line 82
    invoke-virtual {p0}, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->syncToDiskNow()V

    .line 83
    return-void
.end method

.method public declared-synchronized syncToDiskNow()V
    .locals 4

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->syncRequestState:Lcom/amazon/ags/client/whispersync/SyncRequestState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/whispersync/SyncRequestState;->setDiskWriteRequested(Z)V

    .line 90
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "Starting write to file system"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->gameDataMap:Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    invoke-interface {v0}, Lcom/amazon/ags/client/whispersync/InternalGameDataMap;->lockAndCopy()Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->localStorage:Lcom/amazon/ags/client/whispersync/storage/LocalStorage;

    invoke-interface {v1, v0}, Lcom/amazon/ags/client/whispersync/storage/LocalStorage;->save(Lcom/amazon/ags/client/whispersync/InternalGameDataMap;)I

    move-result v0

    .line 95
    const-string/jumbo v1, "GC_Whispersync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Completed write of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " bytes to file system"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->whispersyncEventPoster:Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;

    sget-object v1, Lcom/amazon/ags/client/whispersync/WhispersyncEvent;->DISK_WRITE_COMPLETE:Lcom/amazon/ags/client/whispersync/WhispersyncEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/whispersync/WhispersyncEventPoster;->postEvent(Lcom/amazon/ags/client/whispersync/WhispersyncEvent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazon/ags/AGSClientException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    :try_start_2
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v2, "Unable to write to file system."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    const-string/jumbo v0, "WHISPERSYNC_CLOUD_SYNC_IO_EXCEPTION"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->reportCountEvent(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    :try_start_3
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v2, "Unable to write to file system."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    const-string/jumbo v0, "WHISPERSYNC_CLOUD_SYNC_CLIENT_EXCEPTION"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/DiskSynchronizer;->reportCountEvent(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
