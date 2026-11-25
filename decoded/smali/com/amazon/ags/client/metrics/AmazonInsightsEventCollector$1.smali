.class Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector$1;
.super Lcom/amazon/insights/InsightsCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/insights/InsightsCallback",
        "<",
        "Lcom/amazon/insights/AmazonInsights;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector$1;->this$0:Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;

    iput-object p2, p0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amazon/insights/InsightsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/insights/AmazonInsights;)V
    .locals 4

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/insights/AmazonInsights;->getEventClient()Lcom/amazon/insights/EventClient;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;->DEVICE_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;

    invoke-virtual {v1}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/amazon/ags/html5/util/DeviceInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/EventClient;->addGlobalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    iget-object v2, p0, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector$1;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 72
    sget-object v2, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;->GAME_ID:Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;

    invoke-virtual {v2}, Lcom/amazon/ags/constants/metrics/MetricConstants$MetricDecoratedValueAttributeKeys;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/amazon/insights/EventClient;->addGlobalAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-static {}, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Unexpected error occurred while attempting to add GameID and DeviceID to Insights instance"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/amazon/insights/AmazonInsights;

    invoke-virtual {p0, p1}, Lcom/amazon/ags/client/metrics/AmazonInsightsEventCollector$1;->onComplete(Lcom/amazon/insights/AmazonInsights;)V

    return-void
.end method
