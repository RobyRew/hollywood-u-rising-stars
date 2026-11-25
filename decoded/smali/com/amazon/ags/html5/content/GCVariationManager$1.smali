.class Lcom/amazon/ags/html5/content/GCVariationManager$1;
.super Lcom/amazon/insights/InsightsCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/insights/InsightsCallback",
        "<",
        "Lcom/amazon/insights/VariationSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/content/GCVariationManager;

.field final synthetic val$abClient:Lcom/amazon/insights/ABTestClient;

.field final synthetic val$callback:Lcom/amazon/ags/html5/content/GCVariationManager$GCVariationManagerRefreshCallback;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/content/GCVariationManager;Lcom/amazon/insights/ABTestClient;Lcom/amazon/ags/html5/content/GCVariationManager$GCVariationManagerRefreshCallback;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazon/ags/html5/content/GCVariationManager$1;->this$0:Lcom/amazon/ags/html5/content/GCVariationManager;

    iput-object p2, p0, Lcom/amazon/ags/html5/content/GCVariationManager$1;->val$abClient:Lcom/amazon/insights/ABTestClient;

    iput-object p3, p0, Lcom/amazon/ags/html5/content/GCVariationManager$1;->val$callback:Lcom/amazon/ags/html5/content/GCVariationManager$GCVariationManagerRefreshCallback;

    invoke-direct {p0}, Lcom/amazon/insights/InsightsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/insights/VariationSet;)V
    .locals 3

    .prologue
    .line 67
    if-eqz p1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/amazon/ags/html5/content/GCVariationManager$1;->this$0:Lcom/amazon/ags/html5/content/GCVariationManager;

    invoke-static {v0}, Lcom/amazon/ags/html5/content/GCVariationManager;->access$000(Lcom/amazon/ags/html5/content/GCVariationManager;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/insights/VariationSet;->getVariation(Ljava/lang/String;)Lcom/amazon/insights/Variation;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/amazon/ags/html5/content/GCVariationManager$1;->this$0:Lcom/amazon/ags/html5/content/GCVariationManager;

    invoke-static {v1}, Lcom/amazon/ags/html5/content/GCVariationManager;->access$100(Lcom/amazon/ags/html5/content/GCVariationManager;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/Variation;->getVariableAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/amazon/ags/html5/content/GCVariationManager$1;->val$abClient:Lcom/amazon/insights/ABTestClient;

    invoke-interface {v1, v0}, Lcom/amazon/insights/ABTestClient;->getVariations([Ljava/lang/String;)Lcom/amazon/insights/InsightsHandler;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/html5/content/GCVariationManager$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/ags/html5/content/GCVariationManager$1$1;-><init>(Lcom/amazon/ags/html5/content/GCVariationManager$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/insights/InsightsHandler;->setCallback(Lcom/amazon/insights/InsightsCallback;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/amazon/ags/html5/content/GCVariationManager$1;->val$callback:Lcom/amazon/ags/html5/content/GCVariationManager$GCVariationManagerRefreshCallback;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/amazon/ags/html5/content/GCVariationManager$1;->val$callback:Lcom/amazon/ags/html5/content/GCVariationManager$GCVariationManagerRefreshCallback;

    invoke-interface {v0}, Lcom/amazon/ags/html5/content/GCVariationManager$GCVariationManagerRefreshCallback;->onRefreshCompleted()V

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/amazon/insights/VariationSet;

    invoke-virtual {p0, p1}, Lcom/amazon/ags/html5/content/GCVariationManager$1;->onComplete(Lcom/amazon/insights/VariationSet;)V

    return-void
.end method
