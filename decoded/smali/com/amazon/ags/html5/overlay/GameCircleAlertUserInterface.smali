.class public Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/html5/javascript/domain/CloseAlertListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public closeAlert()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->finish()V

    .line 140
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "OVERLAY_DATA_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "OVERLAY_SESSION_CLIENT_VERSION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "OVERLAY_SESSION_CONTENT_VERSION"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "OVERLAY_SESSION_APPLICATION_NAME"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "OVERLAY_SESSION_LANGUAGE_CODE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v6, "OVERLAY_SESSION_COUNTRY_CODE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v7, "OVERLAY_SESSION_DEVICE_IDENTIFIER"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v8, "OVERLAY_SESSION_DEVICE_MANUFACTURER"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v9, "OVERLAY_SESSION_DEVICE_MODEL"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 52
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v10, "OVERLAY_SESSION_DEVICE_TYPE"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 53
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v11, "OVERLAY_SESSION_VARIATION_CACHE"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 55
    invoke-static {v1}, Lcom/amazon/ags/html5/util/JSONUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "clientVersion"

    invoke-virtual {v12, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string/jumbo v1, "contentVersion"

    invoke-virtual {v12, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string/jumbo v1, "appName"

    invoke-virtual {v12, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string/jumbo v1, "languageCode"

    invoke-virtual {v12, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string/jumbo v1, "countryCode"

    invoke-virtual {v12, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v1, "deviceId"

    invoke-virtual {v12, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string/jumbo v1, "deviceManufacturer"

    invoke-virtual {v12, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string/jumbo v1, "deviceModel"

    invoke-virtual {v12, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string/jumbo v1, "deviceType"

    invoke-virtual {v12, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string/jumbo v1, "canSendMail"

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 70
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v2, "experiments"

    invoke-virtual {v12, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    if-eqz v12, :cond_0

    .line 74
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getInstance()Lcom/amazon/ags/html5/factory/ServiceFactory;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getWebViewFactory()Lcom/amazon/ags/html5/util/WebViewFactory;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/amazon/ags/html5/util/WebViewFactory;->newOverlayWebView(Landroid/app/Activity;)Landroid/webkit/WebView;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 87
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 88
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 89
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 91
    const-string/jumbo v3, "overlaywebview"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

    move-result-object v3

    .line 92
    invoke-virtual {v3, p0}, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->addCloseAlertListener(Lcom/amazon/ags/html5/javascript/domain/CloseAlertListener;)V

    .line 94
    invoke-virtual {v1}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getJavascriptRepository()Lcom/amazon/ags/html5/javascript/JavascriptRepository;

    move-result-object v4

    .line 95
    new-instance v5, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1;-><init>(Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;Ljava/lang/String;Lcom/amazon/ags/html5/factory/ServiceFactory;Landroid/webkit/WebView;)V

    invoke-virtual {v3, v5}, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->addMessageHandlerReadyListener(Lcom/amazon/ags/html5/javascript/domain/MessageHandlerReadyListener;)V

    .line 117
    invoke-interface {v4, v2}, Lcom/amazon/ags/html5/javascript/JavascriptRepository;->loadAlertJavascript(Landroid/webkit/WebView;)V

    .line 120
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "modal_alert_container"

    invoke-static {v0, v1}, Lcom/amazon/ags/html5/util/ResourceUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->setContentView(I)V

    .line 121
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "id"

    const-string/jumbo v4, "modal_alert_container"

    invoke-static {v0, v1, v4}, Lcom/amazon/ags/html5/util/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 124
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 127
    invoke-virtual {v2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    const-string/jumbo v0, "hostinterface"

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    sget-object v2, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error occurred while preparing alert initialization data"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 132
    :catch_1
    move-exception v0

    .line 133
    sget-object v1, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unexpected error occurred while displaying alert.  Alert will close."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->finish()V

    goto :goto_1
.end method
