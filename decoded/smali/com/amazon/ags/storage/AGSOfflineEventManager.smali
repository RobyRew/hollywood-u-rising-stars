.class public Lcom/amazon/ags/storage/AGSOfflineEventManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/storage/OfflineEventManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

.field private final serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

.field protected final storage:Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/storage/AGSOfflineEventManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/storage/AGSOfflineEventManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;Lcom/amazon/ags/html5/util/NetworkUtil;Lcom/amazon/ags/html5/service/ServiceHelper;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/amazon/ags/storage/AGSOfflineEventManager;->networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "storage must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/amazon/ags/storage/AGSOfflineEventManager;->storage:Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;

    .line 37
    iput-object p3, p0, Lcom/amazon/ags/storage/AGSOfflineEventManager;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    .line 38
    return-void
.end method


# virtual methods
.method public getNetworkUtil()Lcom/amazon/ags/html5/util/NetworkUtil;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazon/ags/storage/AGSOfflineEventManager;->networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

    return-object v0
.end method

.method public getNextEvent()Lcom/amazon/ags/storage/OfflineEventManager$OfflineEventTuple;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/amazon/ags/storage/AGSOfflineEventManager;->storage:Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;

    invoke-virtual {v0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->peekEvent()Lcom/amazon/ags/storage/OfflineEventId;

    move-result-object v2

    .line 92
    sget-object v0, Lcom/amazon/ags/storage/OfflineEventId;->Invalid:Lcom/amazon/ags/storage/OfflineEventId;

    if-ne v2, v0, :cond_0

    .line 116
    :goto_0
    return-object v1

    .line 96
    :cond_0
    sget-object v0, Lcom/amazon/ags/storage/AGSOfflineEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Processing event ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/storage/AGSOfflineEventManager;->storage:Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;

    invoke-virtual {v0, v2}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->getEvent(Lcom/amazon/ags/storage/OfflineEventId;)Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    new-instance v3, Lcom/amazon/ags/storage/OfflineEvent;

    invoke-direct {v3, v0}, Lcom/amazon/ags/storage/OfflineEvent;-><init>(Lorg/json/JSONObject;)V

    .line 106
    new-instance v0, Lcom/amazon/ags/storage/OfflineEventManager$OfflineEventTuple;

    invoke-direct {v0, v2, v3}, Lcom/amazon/ags/storage/OfflineEventManager$OfflineEventTuple;-><init>(Lcom/amazon/ags/storage/OfflineEventId;Lcom/amazon/ags/storage/OfflineEvent;)V
    :try_end_0
    .catch Lcom/amazon/ags/storage/OfflineEventException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v1, v0

    .line 116
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    sget-object v1, Lcom/amazon/ags/storage/AGSOfflineEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to process event ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Removing event. Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/ags/storage/OfflineEventException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/amazon/ags/storage/AGSOfflineEventManager;->storage:Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;

    invoke-virtual {v1, v2}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->removeEvent(Lcom/amazon/ags/storage/OfflineEventId;)V

    .line 111
    throw v0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    sget-object v2, Lcom/amazon/ags/storage/AGSOfflineEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error occurred while getting the next event"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public processOfflineEvent(Lcom/amazon/ags/storage/OfflineEventManager$OfflineEventTuple;)V
    .locals 4

    .prologue
    .line 145
    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ags/storage/OfflineEventManager$OfflineEventTuple;->getOfflineEvent()Lcom/amazon/ags/storage/OfflineEvent;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 156
    const-string/jumbo v2, "ACTION_CODE"

    const/16 v3, 0x22

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string/jumbo v2, "jsonEvent"

    invoke-virtual {v0}, Lcom/amazon/ags/storage/OfflineEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string/jumbo v0, "REQUEST_ID"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    const-string/jumbo v0, "REQUEST_ID"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    :cond_2
    new-instance v0, Lcom/amazon/ags/storage/OfflineEventJSONRequest;

    new-instance v2, Lcom/amazon/ags/storage/AGSOfflineEventManager$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/ags/storage/AGSOfflineEventManager$1;-><init>(Lcom/amazon/ags/storage/AGSOfflineEventManager;Lcom/amazon/ags/storage/OfflineEventManager$OfflineEventTuple;)V

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/storage/OfflineEventJSONRequest;-><init>(Lorg/json/JSONObject;Lcom/amazon/ags/storage/OfflineEventJSONRequest$OfflineEventJSONCallback;)V

    .line 181
    iget-object v1, p0, Lcom/amazon/ags/storage/AGSOfflineEventManager;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    invoke-interface {v1, v0}, Lcom/amazon/ags/html5/service/ServiceHelper;->handleRequestAsync(Lcom/amazon/ags/client/JSONRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    sget-object v1, Lcom/amazon/ags/storage/AGSOfflineEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Exception encountered while handling offline event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeEvent(Lcom/amazon/ags/storage/OfflineEventId;)V
    .locals 4

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "id must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    sget-object v0, Lcom/amazon/ags/storage/AGSOfflineEventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "submitEvent() called with event ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/amazon/ags/storage/AGSOfflineEventManager;->storage:Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;

    invoke-virtual {v0, p1}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->removeEvent(Lcom/amazon/ags/storage/OfflineEventId;)V

    .line 135
    return-void
.end method

.method public removeNextEvent()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/amazon/ags/storage/AGSOfflineEventManager;->getNextEvent()Lcom/amazon/ags/storage/OfflineEventManager$OfflineEventTuple;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/amazon/ags/storage/OfflineEventManager$OfflineEventTuple;->getEventId()Lcom/amazon/ags/storage/OfflineEventId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/ags/storage/AGSOfflineEventManager;->removeEvent(Lcom/amazon/ags/storage/OfflineEventId;)V

    .line 85
    :cond_0
    return-void
.end method

.method public submitEvent(Lcom/amazon/ags/storage/OfflineEvent;)Lcom/amazon/ags/storage/OfflineEventId;
    .locals 6

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/ags/storage/OfflineEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/amazon/ags/storage/AGSOfflineEventManager;->storage:Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;

    invoke-virtual {v1, v0}, Lcom/amazon/ags/storage/SQLiteOfflineEventStorage;->storeEvent(Lorg/json/JSONObject;)Lcom/amazon/ags/storage/OfflineEventId;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/amazon/ags/storage/AGSOfflineEventManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "submitEvent() complete. Event ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/ags/storage/OfflineEventId;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Lcom/amazon/ags/storage/AGSOfflineEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "submitEvent() - Failed to convert event to JSON due to error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    new-instance v1, Lcom/amazon/ags/storage/OfflineEventException;

    invoke-direct {v1, v0}, Lcom/amazon/ags/storage/OfflineEventException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
