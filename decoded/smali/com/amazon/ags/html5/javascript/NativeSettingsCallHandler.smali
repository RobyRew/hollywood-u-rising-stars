.class public Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;
.super Lcom/amazon/ags/html5/javascript/CallHandlerBase;
.source "SourceFile"


# static fields
.field private static final supportedCalls:Ljava/util/Set;
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
.field private final settingsDataCache:Lcom/amazon/ags/storage/OfflineDataCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getSetting"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "putSetting"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->supportedCalls:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/amazon/ags/storage/OfflineDataCache;)V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->supportedCalls:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/amazon/ags/html5/javascript/CallHandlerBase;-><init>(Landroid/os/Handler;Ljava/util/Set;)V

    .line 31
    iput-object p2, p0, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->settingsDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    .line 32
    return-void
.end method

.method private getSetting(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 50
    :try_start_0
    const-string/jumbo v0, "parameters"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "primaryKey"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->settingsDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    invoke-interface {v1, v0}, Lcom/amazon/ags/storage/OfflineDataCache;->getCacheItem(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to get key from request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putSetting(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 70
    :try_start_0
    const-string/jumbo v0, "parameters"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "primaryKey"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string/jumbo v2, "secondaryKey"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    iget-object v3, p0, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->settingsDataCache:Lcom/amazon/ags/storage/OfflineDataCache;

    invoke-interface {v3, v1, v2, v0}, Lcom/amazon/ags/storage/OfflineDataCache;->setCacheItem(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 80
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to get keys and value from request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 36
    const-string/jumbo v1, "getSetting"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->getSetting(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 44
    :goto_0
    return v0

    .line 39
    :cond_0
    const-string/jumbo v1, "putSetting"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeSettingsCallHandler;->putSetting(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
