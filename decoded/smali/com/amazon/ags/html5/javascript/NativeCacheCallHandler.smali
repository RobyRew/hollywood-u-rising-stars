.class public Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;
.super Lcom/amazon/ags/html5/javascript/CallHandlerBase;
.source "SourceFile"


# static fields
.field private static final supportedCacheCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheNameMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/storage/OfflineDataCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "setCacheItem"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "setCacheItems"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "getCacheItem"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "queryCacheItems"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "clearCache"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "removeCachedItems"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->supportedCacheCalls:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/amazon/ags/storage/OfflineDataCache;Lcom/amazon/ags/storage/OfflineDataCache;Lcom/amazon/ags/storage/OfflineDataCache;)V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->supportedCacheCalls:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/amazon/ags/html5/javascript/CallHandlerBase;-><init>(Landroid/os/Handler;Ljava/util/Set;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->cacheNameMapping:Ljava/util/Map;

    .line 46
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->cacheNameMapping:Ljava/util/Map;

    const-string/jumbo v1, "AchievementsCache"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->cacheNameMapping:Ljava/util/Map;

    const-string/jumbo v1, "LeaderboardsCache"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->cacheNameMapping:Ljava/util/Map;

    const-string/jumbo v1, "PlayerProfileCache"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method private createCacheRequestFromJSON(Lorg/json/JSONObject;)Lcom/amazon/ags/storage/OfflineCacheRequest;
    .locals 4

    .prologue
    .line 158
    const-string/jumbo v0, "primaryKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string/jumbo v1, "secondaryKey"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string/jumbo v2, "jsonData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 161
    new-instance v3, Lcom/amazon/ags/storage/OfflineCacheRequest;

    invoke-direct {v3, v0, v1, v2}, Lcom/amazon/ags/storage/OfflineCacheRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v3
.end method

.method private handleCacheRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->cacheNameMapping:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/storage/OfflineDataCache;

    .line 94
    const-string/jumbo v1, "setCacheItem"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string/jumbo v1, "cacheRequest"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 96
    invoke-direct {p0, v1}, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->createCacheRequestFromJSON(Lorg/json/JSONObject;)Lcom/amazon/ags/storage/OfflineCacheRequest;

    move-result-object v1

    .line 97
    invoke-interface {v0, v1}, Lcom/amazon/ags/storage/OfflineDataCache;->setCacheItem(Lcom/amazon/ags/storage/OfflineCacheRequest;)V

    .line 98
    const-string/jumbo v1, "{}"

    .line 99
    const-string/jumbo v0, "SUCCESS"

    .line 154
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void

    .line 100
    :cond_0
    const-string/jumbo v1, "setCacheItems"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    const-string/jumbo v1, "cacheRequests"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 104
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 105
    invoke-direct {p0, v4}, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->createCacheRequestFromJSON(Lorg/json/JSONObject;)Lcom/amazon/ags/storage/OfflineCacheRequest;

    move-result-object v4

    .line 106
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :cond_1
    invoke-interface {v0, v3}, Lcom/amazon/ags/storage/OfflineDataCache;->setCacheItems(Ljava/util/List;)V

    .line 110
    const-string/jumbo v1, "{}"

    .line 111
    const-string/jumbo v0, "SUCCESS"

    goto :goto_0

    .line 112
    :cond_2
    const-string/jumbo v1, "getCacheItem"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    const-string/jumbo v1, "primaryKey"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-interface {v0, v1}, Lcom/amazon/ags/storage/OfflineDataCache;->getCacheItem(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    const-string/jumbo v0, "SUCCESS"

    goto :goto_0

    .line 119
    :cond_3
    const-string/jumbo v1, "{}"

    .line 120
    const-string/jumbo v0, "ERROR"

    goto :goto_0

    .line 122
    :cond_4
    const-string/jumbo v1, "queryCacheItems"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 123
    const-string/jumbo v1, "secondaryKey"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-interface {v0, v1}, Lcom/amazon/ags/storage/OfflineDataCache;->queryCacheItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_5

    .line 128
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 132
    :goto_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 133
    const-string/jumbo v3, "queryResult"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    if-eqz v1, :cond_6

    .line 135
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string/jumbo v0, "SUCCESS"

    goto/16 :goto_0

    .line 130
    :cond_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_2

    .line 138
    :cond_6
    const-string/jumbo v1, "{}"

    .line 139
    const-string/jumbo v0, "ERROR"

    goto/16 :goto_0

    .line 141
    :cond_7
    const-string/jumbo v1, "clearCache"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 142
    invoke-interface {v0}, Lcom/amazon/ags/storage/OfflineDataCache;->clear()V

    .line 143
    const-string/jumbo v1, "{}"

    .line 144
    const-string/jumbo v0, "SUCCESS"

    goto/16 :goto_0

    .line 145
    :cond_8
    const-string/jumbo v1, "removeCachedItems"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 146
    const-string/jumbo v1, "secondaryKey"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-interface {v0, v1}, Lcom/amazon/ags/storage/OfflineDataCache;->removeCachedItems(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v1, "{}"

    .line 149
    const-string/jumbo v0, "SUCCESS"

    goto/16 :goto_0

    .line 151
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cache request method not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected handleMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 53
    sget-object v1, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->supportedCacheCalls:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    .line 57
    :cond_0
    invoke-static {}, Lcom/amazon/ags/html5/factory/ServiceFactory;->isDebugLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cache call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    :try_start_0
    const-string/jumbo v1, "target"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string/jumbo v2, "parameters"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 68
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-nez p1, :cond_3

    .line 69
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Insufficient arguments for cache request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    iget-object v2, p0, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cache request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const-string/jumbo v1, "{}"

    const-string/jumbo v2, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v1, v2}, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, v1, p2, v2}, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->handleCacheRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 79
    :catch_1
    move-exception v1

    .line 80
    iget-object v2, p0, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cache request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    const-string/jumbo v1, "{}"

    const-string/jumbo v2, "ERROR"

    invoke-virtual {p0, p1, v1, v2}, Lcom/amazon/ags/html5/javascript/NativeCacheCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
