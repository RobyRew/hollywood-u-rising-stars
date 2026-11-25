.class public Lcom/amazon/ags/client/whispersync/storage/CloudStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/client/whispersync/storage/RemoteStorage;


# static fields
.field private static final TAG:Ljava/lang/String; = "GC_Whispersync"


# instance fields
.field private final marshaller:Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;

.field private final serviceSyncedClock:Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;

.field private final whispersyncHttpClient:Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClient;


# direct methods
.method public constructor <init>(Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClient;Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/storage/CloudStorage;->whispersyncHttpClient:Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClient;

    .line 35
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/storage/CloudStorage;->marshaller:Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;

    .line 36
    iput-object p3, p0, Lcom/amazon/ags/client/whispersync/storage/CloudStorage;->serviceSyncedClock:Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;

    .line 37
    return-void
.end method


# virtual methods
.method public retrieve(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/storage/GameData;
    .locals 5

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/storage/CloudStorage;->whispersyncHttpClient:Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClient;

    invoke-interface {v0, p1}, Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClient;->getWhisperData(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;->getDocument()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;->getVersionId()Ljava/lang/String;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/storage/CloudStorage;->serviceSyncedClock:Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;

    invoke-virtual {v0}, Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;->synchronizeClock(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    .line 71
    if-eqz v1, :cond_0

    .line 72
    const-string/jumbo v0, "GC_Whispersync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received document ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] from the service, calling the marshaller"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/storage/CloudStorage;->marshaller:Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;

    invoke-interface {v0, v1}, Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;->parse(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    move-result-object v0

    .line 78
    :goto_0
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v3, "Finished retrieving Whispersync data from the cloud"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Lcom/amazon/ags/client/whispersync/storage/GameData;

    invoke-direct {v1, v0, v2}, Lcom/amazon/ags/client/whispersync/storage/GameData;-><init>(Lcom/amazon/ags/client/whispersync/InternalGameDataMap;Ljava/lang/String;)V

    return-object v1

    .line 75
    :cond_0
    const-string/jumbo v1, "GC_Whispersync"

    const-string/jumbo v3, "Received an empty document from the service"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public save(Lcom/amazon/ags/client/whispersync/storage/GameData;)Lcom/amazon/ags/client/whispersync/storage/GameData;
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/storage/CloudStorage;->marshaller:Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;

    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/storage/GameData;->getGameDataMap()Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;->composeForService(Lcom/amazon/ags/client/whispersync/InternalGameDataMap;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "GC_Whispersync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Uploading document to cloud: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v1, Lcom/amazon/ags/client/whispersync/network/WhispersyncRequest;

    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/storage/GameData;->getVersionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazon/ags/client/whispersync/network/WhispersyncRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/storage/CloudStorage;->whispersyncHttpClient:Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClient;

    invoke-interface {v0, v1}, Lcom/amazon/ags/client/whispersync/network/WhispersyncHttpClient;->postWhisperData(Lcom/amazon/ags/client/whispersync/network/WhispersyncRequest;)Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;

    move-result-object v1

    .line 48
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/storage/CloudStorage;->serviceSyncedClock:Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;

    invoke-virtual {v1}, Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/ags/client/whispersync/clock/GameDataServiceSyncedClock;->synchronizeClock(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;->getDocument()Ljava/lang/String;

    move-result-object v2

    .line 51
    const/4 v0, 0x0

    .line 52
    if-eqz v2, :cond_0

    .line 53
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/storage/CloudStorage;->marshaller:Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;

    invoke-interface {v0, v2}, Lcom/amazon/ags/client/whispersync/marshaller/GameDataMarshaller;->parse(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/InternalGameDataMap;

    move-result-object v0

    .line 55
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/ags/client/whispersync/network/WhispersyncResponse;->getVersionId()Ljava/lang/String;

    move-result-object v1

    .line 56
    new-instance v2, Lcom/amazon/ags/client/whispersync/storage/GameData;

    invoke-direct {v2, v0, v1}, Lcom/amazon/ags/client/whispersync/storage/GameData;-><init>(Lcom/amazon/ags/client/whispersync/InternalGameDataMap;Ljava/lang/String;)V

    return-object v2
.end method
