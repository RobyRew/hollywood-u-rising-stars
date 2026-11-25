.class public Lcom/amazon/ags/client/whispersync/model/NumberElement;
.super Lcom/amazon/ags/client/whispersync/model/Element;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/api/whispersync/model/SyncableNumberElement;


# static fields
.field private static final TAG:Ljava/lang/String; = "GC_Whispersync"


# instance fields
.field protected value:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/model/Element;-><init>()V

    .line 31
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/model/NumberElement;->value:Ljava/math/BigDecimal;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/client/whispersync/model/NumberElement;)V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-wide v2, p1, Lcom/amazon/ags/client/whispersync/model/NumberElement;->timestamp:J

    invoke-direct {p0, v0, v2, v3}, Lcom/amazon/ags/client/whispersync/model/Element;-><init>(Ljava/util/Map;J)V

    .line 55
    iget-object v0, p1, Lcom/amazon/ags/client/whispersync/model/NumberElement;->metadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/model/NumberElement;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/amazon/ags/client/whispersync/model/NumberElement;->metadata:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p1, Lcom/amazon/ags/client/whispersync/model/NumberElement;->value:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/model/NumberElement;->value:Ljava/math/BigDecimal;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/amazon/ags/client/whispersync/clock/ClockUtil;->getCurrentTime()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/amazon/ags/client/whispersync/model/Element;-><init>(Ljava/util/Map;J)V

    .line 36
    if-nez p1, :cond_0

    .line 37
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "NumberElement cannot contain a null value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/model/NumberElement;->value:Ljava/math/BigDecimal;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/util/Map;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigDecimal;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/ags/client/whispersync/model/Element;-><init>(Ljava/util/Map;J)V

    .line 45
    if-nez p1, :cond_0

    .line 46
    const-string/jumbo v0, "GC_Whispersync"

    const-string/jumbo v1, "NumberElement cannot contain a null value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/model/NumberElement;->value:Ljava/math/BigDecimal;

    .line 50
    return-void
.end method


# virtual methods
.method public asDecimal()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/NumberElement;->value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public asDouble()D
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/NumberElement;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public asInt()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/NumberElement;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public asLong()J
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/NumberElement;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/model/NumberElement;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected reportEvent(Ljava/lang/String;Lcom/amazon/ags/client/whispersync/model/SyncableType;)V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->getInstance()Lcom/amazon/ags/client/metrics/EventCollectorClient;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-static {p1, p2}, Lcom/amazon/ags/client/whispersync/metrics/WhispersyncMetricsFactory;->createSyncableTypeEvent(Ljava/lang/String;Lcom/amazon/ags/client/whispersync/model/SyncableType;)Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/metrics/EventCollectorClient;->reportGenericEvent(Lcom/amazon/ags/client/metrics/events/GameCircleGenericEvent;)V

    .line 104
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/amazon/ags/client/whispersync/model/NumberElement;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/model/NumberElement;->value:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazon/ags/client/whispersync/model/NumberElement;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " metadata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/model/NumberElement;->metadata:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
