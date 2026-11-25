.class Lcom/amazon/ags/html5/javascript/BackgroundTaskHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/client/JSONRequest;


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/javascript/BackgroundTaskHandler;

.field final synthetic val$request:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/javascript/BackgroundTaskHandler;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/amazon/ags/html5/javascript/BackgroundTaskHandler$1;->this$0:Lcom/amazon/ags/html5/javascript/BackgroundTaskHandler;

    iput-object p2, p0, Lcom/amazon/ags/html5/javascript/BackgroundTaskHandler$1;->val$request:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/BackgroundTaskHandler$1;->val$request:Lorg/json/JSONObject;

    const-string/jumbo v1, "parameters"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "REQUEST_ID"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public setResponse(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
