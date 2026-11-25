.class public Lcom/amazon/ags/html5/javascript/ReportEventHandler;
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
.field private final eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "reportEvent"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->supportedCalls:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/client/metrics/EventCollectorClient;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->supportedCalls:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/amazon/ags/html5/javascript/CallHandlerBase;-><init>(Landroid/os/Handler;Ljava/util/Set;)V

    .line 37
    iput-object p1, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    .line 38
    return-void
.end method

.method private convertAttributes(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 123
    if-nez p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Null attributes json."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 141
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 130
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 135
    :catch_0
    move-exception v2

    .line 136
    iget-object v4, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid value for key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " in json: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 141
    goto :goto_0
.end method

.method private convertCounts(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 147
    if-nez p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Null counts json."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 165
    :goto_0
    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 154
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 159
    :catch_0
    move-exception v2

    .line 160
    iget-object v4, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid value for key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " in json: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 165
    goto :goto_0
.end method

.method private convertTimes(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 171
    if-nez p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Null times json."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 189
    :goto_0
    return-object v0

    .line 177
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 178
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 183
    :catch_0
    move-exception v2

    .line 184
    iget-object v4, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid value for key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " in json: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 189
    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "reportEvent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    .line 47
    :cond_0
    invoke-virtual {p0, p3}, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->reportEvent(Lorg/json/JSONObject;)Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;->getReplyMsg()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected reportEvent(Lorg/json/JSONObject;)Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;
    .locals 7

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "EventCollector is null. We will not report the event."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "ERROR"

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;-><init>(Lcom/amazon/ags/html5/javascript/ReportEventHandler;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    invoke-virtual {v0}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->isReportingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Reporting is disabled. Cannot report javascript event."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "SUCCESS"

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;-><init>(Lcom/amazon/ags/html5/javascript/ReportEventHandler;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    if-nez p1, :cond_2

    .line 68
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "request is null. We will not report the event."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "REQUEST_ERROR"

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;-><init>(Lcom/amazon/ags/html5/javascript/ReportEventHandler;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    :try_start_0
    const-string/jumbo v0, "parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    const-string/jumbo v1, "eventAttributes"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 81
    const-string/jumbo v1, "eventCountMetrics"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 82
    const-string/jumbo v1, "eventTimeMetrics"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 84
    sget-object v1, Lcom/amazon/ags/constants/NativeCallKeys;->EVENT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/ags/constants/NativeCallKeys;->EVENT_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " key returns no value. This event cannot be constructed. Request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "REQUEST_ERROR"

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;-><init>(Lcom/amazon/ags/html5/javascript/ReportEventHandler;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No parameters for request. We will not report the event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    new-instance v0, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "REQUEST_ERROR"

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;-><init>(Lcom/amazon/ags/html5/javascript/ReportEventHandler;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    if-eqz v3, :cond_4

    .line 96
    invoke-direct {p0, v3}, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->convertAttributes(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 99
    :cond_4
    if-eqz v4, :cond_5

    .line 100
    invoke-direct {p0, v4}, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->convertCounts(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 103
    :cond_5
    if-eqz v5, :cond_6

    .line 104
    invoke-direct {p0, v5}, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->convertTimes(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 109
    :cond_6
    :try_start_1
    new-instance v3, Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;

    invoke-direct {v3, v6, v2, v1, v0}, Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 110
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->eventCollectorClient:Lcom/amazon/ags/client/metrics/EventCollectorClient;

    invoke-virtual {v0, v3}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->reportGenericEvent(Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;)V
    :try_end_1
    .catch Lcom/amazon/ags/client/metrics/IllegalConstructionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    new-instance v0, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "SUCCESS"

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;-><init>(Lcom/amazon/ags/html5/javascript/ReportEventHandler;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/ReportEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create event correctly. Request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    new-instance v0, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "REQUEST_ERROR"

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/ags/html5/javascript/ReportEventHandler$HandlerReply;-><init>(Lcom/amazon/ags/html5/javascript/ReportEventHandler;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
