.class Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/client/JSONRequest;


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast$2;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 136
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 138
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast$2;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;

    invoke-static {v2}, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->access$100(Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v2, "ACTION_CODE"

    const-string/jumbo v3, "HANDLE_TOAST_DISPLAY_METRIC"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string/jumbo v2, "REQUEST_ID"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string/jumbo v2, "toastRequestDisplayed"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 144
    invoke-static {}, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error building toast metric request"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setResponse(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method
