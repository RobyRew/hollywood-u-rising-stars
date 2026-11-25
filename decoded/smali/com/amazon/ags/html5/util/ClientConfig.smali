.class public Lcom/amazon/ags/html5/util/ClientConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/html5/util/ClientConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/html5/util/ClientConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/html5/util/ClientConfig;->config:Ljava/util/Map;

    .line 38
    iget-object v0, p0, Lcom/amazon/ags/html5/util/ClientConfig;->config:Ljava/util/Map;

    const-string/jumbo v8, "AUTH_GET_TOKEN_TIMEOUT_MILLIS"

    new-instance v1, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x2710

    const-wide/32 v6, 0xea60

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;-><init>(JJJ)V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/amazon/ags/html5/util/ClientConfig;->config:Ljava/util/Map;

    const-string/jumbo v8, "THREAD_POOL_SIZE"

    new-instance v1, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;

    const-wide/16 v2, 0x5

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x64

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;-><init>(JJJ)V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/amazon/ags/html5/util/ClientConfig;->config:Ljava/util/Map;

    const-string/jumbo v8, "THREAD_TIMEOUT"

    new-instance v1, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x3e8

    const-wide/32 v6, 0xea60

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;-><init>(JJJ)V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/amazon/ags/html5/util/ClientConfig;->config:Ljava/util/Map;

    const-string/jumbo v8, "HTTP_CONNECTION_POOL_TIMEOUT_MILLIS"

    new-instance v1, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x2710

    const-wide/32 v6, 0xea60

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;-><init>(JJJ)V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/amazon/ags/html5/util/ClientConfig;->config:Ljava/util/Map;

    const-string/jumbo v8, "HTTP_CONNECTION_TIMEOUT_MILLIS"

    new-instance v1, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x2710

    const-wide/32 v6, 0xea60

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;-><init>(JJJ)V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/amazon/ags/html5/util/ClientConfig;->config:Ljava/util/Map;

    const-string/jumbo v8, "HTTP_SOCKET_TIMEOUT_MILLIS"

    new-instance v1, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x2710

    const-wide/32 v6, 0xea60

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;-><init>(JJJ)V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/amazon/ags/html5/util/ClientConfig;->config:Ljava/util/Map;

    const-string/jumbo v8, "HTTP_MAX_TOTAL_CONNECTIONS"

    new-instance v1, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x14

    const-wide/16 v6, 0x32

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;-><init>(JJJ)V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/amazon/ags/html5/util/ClientConfig;->config:Ljava/util/Map;

    const-string/jumbo v8, "HTTP_MAX_CONNECTIONS_PER_ROUTE"

    new-instance v1, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x14

    const-wide/16 v6, 0x32

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;-><init>(JJJ)V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/amazon/ags/html5/util/ClientConfig;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazon/ags/html5/util/ClientConfig;->config:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;

    .line 75
    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/amazon/ags/html5/util/ClientConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No config value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-wide/16 v0, 0x0

    .line 80
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;->getValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 89
    invoke-static {}, Lcom/amazon/ags/html5/factory/ServiceFactory;->isDebugLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/amazon/ags/html5/util/ClientConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Will load config data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    if-nez p1, :cond_2

    .line 114
    :cond_1
    return-void

    .line 98
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 100
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/amazon/ags/html5/util/ClientConfig;->config:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;

    .line 103
    if-eqz v1, :cond_3

    .line 105
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;->setValue(J)V

    .line 106
    invoke-static {}, Lcom/amazon/ags/html5/factory/ServiceFactory;->isDebugLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    sget-object v3, Lcom/amazon/ags/html5/util/ClientConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Loaded config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/ags/html5/util/ClientConfig$ConfigEntry;->getValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    sget-object v3, Lcom/amazon/ags/html5/util/ClientConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to parse local config value for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
