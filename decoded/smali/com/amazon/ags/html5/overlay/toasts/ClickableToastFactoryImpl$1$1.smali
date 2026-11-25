.class Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/client/JSONRequest;


# instance fields
.field final synthetic this$1:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;

.field final synthetic val$actions:Lorg/json/JSONArray;

.field final synthetic val$touchedToastData:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1$1;->this$1:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;

    iput-object p2, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1$1;->val$actions:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1$1;->val$touchedToastData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 92
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 94
    :try_start_0
    const-string/jumbo v0, "ACTION_CODE"

    const-string/jumbo v2, "HANDLE_TOAST_CLICK"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v0, "REQUEST_ID"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v0, "ACTION_MAPPINGS"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1$1;->val$actions:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v0, "TOAST_CLICK_DATA"

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1$1;->val$touchedToastData:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 100
    invoke-static {}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error building toast click request"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setResponse(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
