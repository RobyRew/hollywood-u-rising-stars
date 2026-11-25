.class public Lcom/amazon/ags/client/whispersync/model/LatestStringList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/api/whispersync/model/SyncableStringList;
.implements Lcom/amazon/ags/client/whispersync/model/Mergeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/ags/api/whispersync/model/SyncableStringList;",
        "Lcom/amazon/ags/client/whispersync/model/Mergeable",
        "<",
        "Lcom/amazon/ags/client/whispersync/model/LatestStringList;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/amazon/ags/client/whispersync/model/StringElement;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GC_Whispersync"


# instance fields
.field protected final elements:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/amazon/ags/client/whispersync/model/StringElement;",
            ">;"
        }
    .end annotation
.end field

.field protected maxSize:I

.field protected final name:Ljava/lang/String;

.field protected state:Lcom/amazon/ags/client/whispersync/model/SyncState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/amazon/ags/client/whispersync/model/LatestStringList$1;

    invoke-direct {v0}, Lcom/amazon/ags/client/whispersync/model/LatestStringList$1;-><init>()V

    sput-object v0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->ITEM_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/amazon/ags/client/whispersync/model/SyncState;->NOT_SET:Lcom/amazon/ags/client/whispersync/model/SyncState;

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->state:Lcom/amazon/ags/client/whispersync/model/SyncState;

    .line 67
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->ITEM_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    .line 68
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->name:Ljava/lang/String;

    .line 69
    const/4 v0, 0x5

    iput v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ILcom/amazon/ags/client/whispersync/model/SyncState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/client/whispersync/model/StringElement;",
            ">;I",
            "Lcom/amazon/ags/client/whispersync/model/SyncState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/amazon/ags/client/whispersync/model/SyncState;->NOT_SET:Lcom/amazon/ags/client/whispersync/model/SyncState;

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->state:Lcom/amazon/ags/client/whispersync/model/SyncState;

    .line 75
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->ITEM_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    .line 76
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/client/whispersync/model/StringElement;

    .line 77
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    new-instance v3, Lcom/amazon/ags/client/whispersync/model/StringElement;

    invoke-direct {v3, v0}, Lcom/amazon/ags/client/whispersync/model/StringElement;-><init>(Lcom/amazon/ags/client/whispersync/model/StringElement;)V

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->name:Ljava/lang/String;

    .line 80
    iput p3, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    .line 81
    iput-object p4, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->state:Lcom/amazon/ags/client/whispersync/model/SyncState;

    .line 82
    return-void
.end method

.method private add(Lcom/amazon/ags/client/whispersync/model/StringElement;)V
    .locals 3

    .prologue
    .line 189
    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->lock()V

    .line 191
    if-nez p1, :cond_0

    .line 192
    :try_start_0
    const-string/jumbo v0, "GC_Whispersync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to add null StringElement to LatestStringList with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string/jumbo v0, "WHISPERSYNC_SYNCABLE_TYPE_UPDATE_FAILURE"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->reportEvent(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to add null StringElement to LatestStringList with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->unlock()V

    throw v0

    .line 198
    :cond_0
    :try_start_1
    const-string/jumbo v0, "GC_Whispersync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding string element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to StringList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    iget v1, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    if-le v0, v1, :cond_2

    .line 203
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 204
    sget-object v0, Lcom/amazon/ags/client/whispersync/model/SyncState;->DIRTY:Lcom/amazon/ags/client/whispersync/model/SyncState;

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->state:Lcom/amazon/ags/client/whispersync/model/SyncState;

    .line 205
    invoke-static {}, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->syncPassively()V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :goto_0
    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->unlock()V

    .line 216
    return-void

    .line 210
    :cond_2
    :try_start_2
    sget-object v0, Lcom/amazon/ags/client/whispersync/model/SyncState;->DIRTY:Lcom/amazon/ags/client/whispersync/model/SyncState;

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->state:Lcom/amazon/ags/client/whispersync/model/SyncState;

    .line 211
    invoke-static {}, Lcom/amazon/ags/client/whispersync/WhispersyncClientImpl;->syncPassively()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private reportEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    invoke-static {}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->getInstance()Lcom/amazon/ags/client/metrics/EventCollectorClient;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    sget-object v1, Lcom/amazon/ags/client/whispersync/model/SyncableType;->LATEST_STRING_LIST:Lcom/amazon/ags/client/whispersync/model/SyncableType;

    invoke-static {p1, v1}, Lcom/amazon/ags/client/whispersync/metrics/WhispersyncMetricsFactory;->createSyncableTypeEvent(Ljava/lang/String;Lcom/amazon/ags/client/whispersync/model/SyncableType;)Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->reportGenericEvent(Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;)V

    .line 245
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 122
    new-instance v0, Lcom/amazon/ags/client/whispersync/model/StringElement;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/amazon/ags/client/whispersync/clock/ClockUtil;->getCurrentTime()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amazon/ags/client/whispersync/model/StringElement;-><init>(Ljava/lang/String;Ljava/util/Map;J)V

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->add(Lcom/amazon/ags/client/whispersync/model/StringElement;)V

    .line 123
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/amazon/ags/client/whispersync/model/StringElement;

    invoke-static {}, Lcom/amazon/ags/client/whispersync/clock/ClockUtil;->getCurrentTime()J

    move-result-wide v2

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/amazon/ags/client/whispersync/model/StringElement;-><init>(Ljava/lang/String;Ljava/util/Map;J)V

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->add(Lcom/amazon/ags/client/whispersync/model/StringElement;)V

    .line 129
    return-void
.end method

.method public completeSyncing()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->state:Lcom/amazon/ags/client/whispersync/model/SyncState;

    sget-object v1, Lcom/amazon/ags/client/whispersync/model/SyncState;->SYNCING:Lcom/amazon/ags/client/whispersync/model/SyncState;

    if-ne v0, v1, :cond_0

    .line 233
    sget-object v0, Lcom/amazon/ags/client/whispersync/model/SyncState;->SYNCED:Lcom/amazon/ags/client/whispersync/model/SyncState;

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->state:Lcom/amazon/ags/client/whispersync/model/SyncState;

    .line 235
    :cond_0
    return-void
.end method

.method public copyElements()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/client/whispersync/model/StringElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->lock()V

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/client/whispersync/model/StringElement;

    .line 94
    new-instance v3, Lcom/amazon/ags/client/whispersync/model/StringElement;

    invoke-direct {v3, v0}, Lcom/amazon/ags/client/whispersync/model/StringElement;-><init>(Lcom/amazon/ags/client/whispersync/model/StringElement;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->unlock()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->unlock()V

    .line 99
    return-object v1
.end method

.method public deepCopy()Lcom/amazon/ags/client/whispersync/model/LatestStringList;
    .locals 5

    .prologue
    .line 86
    new-instance v0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;

    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->copyElements()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->state:Lcom/amazon/ags/client/whispersync/model/SyncState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/ags/client/whispersync/model/LatestStringList;-><init>(Ljava/lang/String;Ljava/util/List;ILcom/amazon/ags/client/whispersync/model/SyncState;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/amazon/ags/client/whispersync/model/Mergeable;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->deepCopy()Lcom/amazon/ags/client/whispersync/model/LatestStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    return v0
.end method

.method public getState()Lcom/amazon/ags/client/whispersync/model/SyncState;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->state:Lcom/amazon/ags/client/whispersync/model/SyncState;

    return-object v0
.end method

.method public getValues()[Lcom/amazon/ags/api/whispersync/model/SyncableStringElement;
    .locals 6

    .prologue
    .line 143
    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->lock()V

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    iget v1, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 146
    new-array v4, v3, [Lcom/amazon/ags/api/whispersync/model/SyncableStringElement;

    .line 147
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 148
    const/4 v0, 0x0

    move v1, v0

    .line 149
    :goto_0
    if-ge v1, v3, :cond_0

    .line 150
    add-int/lit8 v2, v1, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/api/whispersync/model/SyncableStringElement;

    aput-object v0, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->unlock()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->unlock()V

    throw v0
.end method

.method public isSet()Z
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->lock()V

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 137
    :goto_0
    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->unlock()V

    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amazon/ags/client/whispersync/GameDataLock;->unlock()V

    throw v0
.end method

.method public merge(Lcom/amazon/ags/client/whispersync/model/LatestStringList;)V
    .locals 3

    .prologue
    .line 160
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    :cond_0
    const-string/jumbo v0, "GC_Whispersync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LatestStringList - Unable to merge LatestStringList from an invalid/unset value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string/jumbo v0, "WHISPERSYNC_SYNCABLE_TYPE_FAILED_MERGE"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->reportEvent(Ljava/lang/String;)V

    .line 176
    :cond_1
    return-void

    .line 166
    :cond_2
    iget v0, p1, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    iget v1, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    if-le v0, v1, :cond_3

    .line 167
    const-string/jumbo v0, "GC_Whispersync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Increasing maxSize of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v0, p1, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    iput v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    .line 170
    :cond_3
    iget-object v0, p1, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/client/whispersync/model/StringElement;

    .line 171
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    iget v2, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    if-le v0, v2, :cond_4

    .line 173
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic merge(Lcom/amazon/ags/client/whispersync/model/Mergeable;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/amazon/ags/client/whispersync/model/LatestStringList;

    invoke-virtual {p0, p1}, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->merge(Lcom/amazon/ags/client/whispersync/model/LatestStringList;)V

    return-void
.end method

.method public setMaxSize(I)V
    .locals 3

    .prologue
    .line 104
    if-lez p1, :cond_0

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_1

    .line 105
    :cond_0
    const-string/jumbo v0, "GC_Whispersync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to set max size to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string/jumbo v0, "WHISPERSYNC_SYNCABLE_TYPE_UPDATE_FAILURE"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->reportEvent(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 109
    :cond_1
    iget v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    if-le p1, v0, :cond_2

    .line 110
    iput p1, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->maxSize:I

    .line 112
    :cond_2
    return-void
.end method

.method public startSyncing()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->state:Lcom/amazon/ags/client/whispersync/model/SyncState;

    sget-object v1, Lcom/amazon/ags/client/whispersync/model/SyncState;->DIRTY:Lcom/amazon/ags/client/whispersync/model/SyncState;

    if-ne v0, v1, :cond_0

    .line 226
    sget-object v0, Lcom/amazon/ags/client/whispersync/model/SyncState;->SYNCING:Lcom/amazon/ags/client/whispersync/model/SyncState;

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->state:Lcom/amazon/ags/client/whispersync/model/SyncState;

    .line 228
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/amazon/ags/client/whispersync/model/HighestNumber;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " elements="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->elements:Ljava/util/SortedSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isSet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/ags/client/whispersync/model/LatestStringList;->isSet()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
