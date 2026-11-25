.class Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/html5/javascript/domain/MessageHandlerReadyListener;


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

.field final synthetic val$serviceFactory:Lcom/amazon/ags/html5/factory/ServiceFactory;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;Lcom/amazon/ags/html5/factory/ServiceFactory;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    iput-object p2, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->val$serviceFactory:Lcom/amazon/ags/html5/factory/ServiceFactory;

    iput-object p3, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageHandlerReady()V
    .locals 13

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "OVERLAY_DATA_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v1}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "OVERLAY_SESSION_CLIENT_VERSION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "OVERLAY_SESSION_CONTENT_VERSION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v3}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "OVERLAY_SESSION_APPLICATION_NAME"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v4}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "OVERLAY_SESSION_LANGUAGE_CODE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    iget-object v5, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v5}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "OVERLAY_SESSION_COUNTRY_CODE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    iget-object v6, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v6}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "OVERLAY_SESSION_DEVICE_IDENTIFIER"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    iget-object v7, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v7}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "OVERLAY_SESSION_DEVICE_MANUFACTURER"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    iget-object v8, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v8}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "OVERLAY_SESSION_DEVICE_MODEL"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 70
    iget-object v9, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v9}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "OVERLAY_SESSION_DEVICE_TYPE"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 71
    iget-object v10, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v10}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "OVERLAY_SESSION_VARIATION_CACHE"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 73
    invoke-static {v0}, Lcom/amazon/ags/html5/util/JSONUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v12, "clientVersion"

    invoke-virtual {v11, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v1, "contentVersion"

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v1, "appName"

    invoke-virtual {v11, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v1, "languageCode"

    invoke-virtual {v11, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v1, "countryCode"

    invoke-virtual {v11, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v1, "deviceId"

    invoke-virtual {v11, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v1, "deviceManufacturer"

    invoke-virtual {v11, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v1, "deviceModel"

    invoke-virtual {v11, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v1, "deviceType"

    invoke-virtual {v11, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v1, "canSendMail"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 88
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v2, "experiments"

    invoke-virtual {v11, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    if-eqz v11, :cond_0

    .line 92
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->val$serviceFactory:Lcom/amazon/ags/html5/factory/ServiceFactory;

    invoke-virtual {v1}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1$1;-><init>(Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    :goto_1
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    invoke-static {}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error occurred while adding client version to overlay initialization"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 113
    invoke-static {}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Unexpected error occurred while processing overlay message.  Overlay will close."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->finish()V

    goto :goto_1
.end method
