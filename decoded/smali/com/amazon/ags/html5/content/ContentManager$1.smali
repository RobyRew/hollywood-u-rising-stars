.class Lcom/amazon/ags/html5/content/ContentManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/html5/content/GCVariationManager$GCVariationManagerRefreshCallback;


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/content/ContentManager;

.field final synthetic val$callback:Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;

.field final synthetic val$executorService:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$variationManager:Lcom/amazon/ags/html5/content/GCVariationManager;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/content/ContentManager;Lcom/amazon/ags/html5/content/GCVariationManager;Ljava/util/concurrent/ExecutorService;Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    iput-object p2, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$variationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    iput-object p3, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$callback:Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCompleted()V
    .locals 4

    .prologue
    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$variationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/content/GCVariationManager;->getCachedVariations()Ljava/util/Map;

    move-result-object v0

    .line 168
    const-string/jumbo v1, "ManifestSrc"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    iget-object v2, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$callback:Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/ags/html5/content/ContentManager;->access$000(Lcom/amazon/ags/html5/content/ContentManager;Ljava/util/concurrent/ExecutorService;Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-static {}, Lcom/amazon/ags/html5/content/ContentManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Content initialization problem encountered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    invoke-static {v1}, Lcom/amazon/ags/html5/content/ContentManager;->access$200(Lcom/amazon/ags/html5/content/ContentManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ags/html5/content/ContentManager;->access$300(Lcom/amazon/ags/html5/content/ContentManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    invoke-static {v0}, Lcom/amazon/ags/html5/content/ContentManager;->access$400(Lcom/amazon/ags/html5/content/ContentManager;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 175
    :catch_1
    move-exception v0

    .line 176
    invoke-static {}, Lcom/amazon/ags/html5/content/ContentManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ContentManager unable to sanitize content state.  GameCircle cannot initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager$1;->val$callback:Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;

    invoke-interface {v0}, Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;->onFailure()V

    goto :goto_0
.end method
