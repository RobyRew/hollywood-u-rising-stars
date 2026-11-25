.class public Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/client/metrics/EventCollector;


# static fields
.field private static final APPLICATION_KEY:Ljava/lang/String; = "M3CGOMO6ILJQ65"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "jqyngW96w5vk9a3gLSPP0srNdRpFkRi2+Fjl6qMoPrg="

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private eventClient:Lcom/amazon/insights/EventClient;


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

    const-class v1, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    const-string/jumbo v0, "Unable to create Event collector class. Context is null."

    .line 43
    new-instance v1, Lcom/amazon/ags/client/metrics/IllegalConstructionException;

    invoke-direct {v1, v0}, Lcom/amazon/ags/client/metrics/IllegalConstructionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->initialize(Landroid/content/Context;)Lcom/amazon/insights/EventClient;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->eventClient:Lcom/amazon/insights/EventClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Lcom/amazon/ags/client/metrics/IllegalConstructionException;

    invoke-direct {v1, v0}, Lcom/amazon/ags/client/metrics/IllegalConstructionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected convertToInsightsEvent(Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;)Lcom/amazon/insights/Event;
    .locals 4

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    const-string/jumbo v0, "Event is null. It cannot be reported."

    .line 108
    new-instance v1, Lcom/amazon/ags/client/metrics/EventReportException;

    invoke-direct {v1, v0}, Lcom/amazon/ags/client/metrics/EventReportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->eventClient:Lcom/amazon/insights/EventClient;

    invoke-virtual {p1}, Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/insights/EventClient;->createEvent(Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v2

    .line 113
    invoke-virtual {p1}, Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;->getCountMetrics()Ljava/util/Map;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/ags/constants/nonjs/MetricsParserConstants;->convertCountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-interface {v2, v1, v0}, Lcom/amazon/insights/Event;->withMetric(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/Event;

    goto :goto_1

    .line 133
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;->getTimeMetrics()Ljava/util/Map;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_6

    .line 135
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/ags/constants/nonjs/MetricsParserConstants;->convertTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-interface {v2, v1, v0}, Lcom/amazon/insights/Event;->withMetric(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/Event;

    goto :goto_2

    .line 143
    :cond_6
    return-object v2
.end method

.method protected initialize(Landroid/content/Context;)Lcom/amazon/insights/EventClient;
    .locals 2

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string/jumbo v0, "The context is null. Insights cannot be initialized."

    .line 59
    new-instance v1, Lcom/amazon/ags/client/metrics/IllegalConstructionException;

    invoke-direct {v1, v0}, Lcom/amazon/ags/client/metrics/IllegalConstructionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_0
    const-string/jumbo v0, "M3CGOMO6ILJQ65"

    const-string/jumbo v1, "jqyngW96w5vk9a3gLSPP0srNdRpFkRi2+Fjl6qMoPrg="

    invoke-static {v0, v1}, Lcom/amazon/insights/AmazonInsights;->newCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/InsightsCredentials;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector$1;-><init>(Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/amazon/insights/AmazonInsights;->newInstance(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/InsightsCallback;)Lcom/amazon/insights/AmazonInsights;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/amazon/insights/AmazonInsights;->getEventClient()Lcom/amazon/insights/EventClient;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->eventClient:Lcom/amazon/insights/EventClient;

    .line 80
    iget-object v0, p0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->eventClient:Lcom/amazon/insights/EventClient;

    return-object v0
.end method

.method public pauseInsightsSession()V
    .locals 2

    .prologue
    .line 160
    const-string/jumbo v0, "M3CGOMO6ILJQ65"

    const-string/jumbo v1, "jqyngW96w5vk9a3gLSPP0srNdRpFkRi2+Fjl6qMoPrg="

    invoke-static {v0, v1}, Lcom/amazon/insights/AmazonInsights;->newCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/InsightsCredentials;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcom/amazon/insights/AmazonInsights;->getInstance(Lcom/amazon/insights/InsightsCredentials;)Lcom/amazon/insights/AmazonInsights;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/amazon/insights/AmazonInsights;->getSessionClient()Lcom/amazon/insights/SessionClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/SessionClient;->pauseSession()V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to report Insights session."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportGenericEvent(Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;)V
    .locals 2

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->convertToInsightsEvent(Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;)Lcom/amazon/insights/Event;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Conversion to Insights event failed. Will not be reported."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->eventClient:Lcom/amazon/insights/EventClient;

    invoke-interface {v1, v0}, Lcom/amazon/insights/EventClient;->recordEvent(Lcom/amazon/insights/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Lcom/amazon/ags/client/metrics/EventReportException;

    invoke-direct {v1, v0}, Lcom/amazon/ags/client/metrics/EventReportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resumeInsightsSession()V
    .locals 2

    .prologue
    .line 171
    const-string/jumbo v0, "M3CGOMO6ILJQ65"

    const-string/jumbo v1, "jqyngW96w5vk9a3gLSPP0srNdRpFkRi2+Fjl6qMoPrg="

    invoke-static {v0, v1}, Lcom/amazon/insights/AmazonInsights;->newCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/InsightsCredentials;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/amazon/insights/AmazonInsights;->getInstance(Lcom/amazon/insights/InsightsCredentials;)Lcom/amazon/insights/AmazonInsights;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/amazon/insights/AmazonInsights;->getSessionClient()Lcom/amazon/insights/SessionClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/SessionClient;->resumeSession()V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    sget-object v0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unable to report Insights session."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIsGuest(Z)V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->eventClient:Lcom/amazon/insights/EventClient;

    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;->PLAYING_ANONYMOUSLY:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;

    invoke-virtual {v1}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/insights/EventClient;->removeGlobalAttribute(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->eventClient:Lcom/amazon/insights/EventClient;

    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;->PLAYING_ANONYMOUSLY:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;

    invoke-virtual {v1}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/EventClient;->addGlobalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setPlayerId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->eventClient:Lcom/amazon/insights/EventClient;

    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;->PLAYER_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;

    invoke-virtual {v1}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/insights/EventClient;->removeGlobalAttribute(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->eventClient:Lcom/amazon/insights/EventClient;

    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;->PLAYER_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;

    invoke-virtual {v1}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/amazon/insights/EventClient;->addGlobalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public submitEvents()V
    .locals 2

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->eventClient:Lcom/amazon/insights/EventClient;

    invoke-interface {v0}, Lcom/amazon/insights/EventClient;->submitEvents()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Lcom/amazon/ags/client/metrics/EventReportException;

    invoke-direct {v1, v0}, Lcom/amazon/ags/client/metrics/EventReportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
