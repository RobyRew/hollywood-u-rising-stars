.class Lcom/amazon/ags/client/OverlayClient$1;
.super Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper",
        "<",
        "Lcom/amazon/ags/api/RequestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/OverlayClient;

.field final synthetic val$pageCode:Ljava/lang/Object;

.field final synthetic val$requestParams:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/OverlayClient;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/amazon/ags/client/OverlayClient$1;->this$0:Lcom/amazon/ags/client/OverlayClient;

    iput-object p3, p0, Lcom/amazon/ags/client/OverlayClient$1;->val$pageCode:Ljava/lang/Object;

    iput-object p4, p0, Lcom/amazon/ags/client/OverlayClient$1;->val$requestParams:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;-><init>(Lcom/amazon/ags/client/ClientBase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildRequest()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 41
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 42
    const-string/jumbo v0, "ACTION_CODE"

    iget-object v1, p0, Lcom/amazon/ags/client/OverlayClient$1;->val$pageCode:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    iget-object v0, p0, Lcom/amazon/ags/client/OverlayClient$1;->val$requestParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 47
    :cond_0
    return-object v2
.end method

.method public convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/amazon/ags/client/RequestResponseImpl;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(I)V

    return-object v0
.end method

.method public getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lcom/amazon/ags/client/RequestResponseImpl;

    const/16 v1, 0x18

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    return-object v0
.end method
