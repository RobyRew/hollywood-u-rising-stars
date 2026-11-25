.class Lcom/amazon/ags/html5/content/GCVariationManager$1$1;
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
.field final synthetic this$1:Lcom/amazon/ags/html5/content/GCVariationManager$1;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/content/GCVariationManager$1;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/amazon/ags/html5/content/GCVariationManager$1$1;->this$1:Lcom/amazon/ags/html5/content/GCVariationManager$1;

    invoke-direct {p0}, Lcom/amazon/insights/InsightsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/insights/VariationSet;)V
    .locals 5

    .prologue
    .line 74
    if-eqz p1, :cond_1

    .line 75
    invoke-interface {p1}, Lcom/amazon/insights/VariationSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/Variation;

    .line 76
    invoke-interface {v0}, Lcom/amazon/insights/Variation;->getProjectName()Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string/jumbo v3, "treatment"

    const-string/jumbo v4, "GCNoVariableFound"

    invoke-interface {v0, v3, v4}, Lcom/amazon/insights/Variation;->getVariableAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "GCNoVariableFound"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/amazon/ags/html5/content/GCVariationManager$1$1;->this$1:Lcom/amazon/ags/html5/content/GCVariationManager$1;

    iget-object v3, v3, Lcom/amazon/ags/html5/content/GCVariationManager$1;->this$0:Lcom/amazon/ags/html5/content/GCVariationManager;

    invoke-static {v3}, Lcom/amazon/ags/html5/content/GCVariationManager;->access$200(Lcom/amazon/ags/html5/content/GCVariationManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/amazon/ags/html5/content/GCVariationManager$1$1;->this$1:Lcom/amazon/ags/html5/content/GCVariationManager$1;

    iget-object v0, v0, Lcom/amazon/ags/html5/content/GCVariationManager$1;->val$callback:Lcom/amazon/ags/html5/content/GCVariationManager$GCVariationManagerRefreshCallback;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/amazon/ags/html5/content/GCVariationManager$1$1;->this$1:Lcom/amazon/ags/html5/content/GCVariationManager$1;

    iget-object v0, v0, Lcom/amazon/ags/html5/content/GCVariationManager$1;->val$callback:Lcom/amazon/ags/html5/content/GCVariationManager$GCVariationManagerRefreshCallback;

    invoke-interface {v0}, Lcom/amazon/ags/html5/content/GCVariationManager$GCVariationManagerRefreshCallback;->onRefreshCompleted()V

    .line 86
    :cond_2
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Lcom/amazon/insights/VariationSet;

    invoke-virtual {p0, p1}, Lcom/amazon/ags/html5/content/GCVariationManager$1$1;->onComplete(Lcom/amazon/insights/VariationSet;)V

    return-void
.end method
