.class public Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;
.super Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private data:Ljava/lang/String;

.field private final jsRepository:Lcom/amazon/ags/html5/javascript/JavascriptRepository;

.field private localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

.field private serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

.field private final uiPoster:Landroid/os/Handler;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;Lcom/amazon/ags/html5/util/WebViewFactory;Lcom/amazon/ags/html5/javascript/JavascriptRepository;Lcom/amazon/ags/html5/service/ServiceHelper;Lcom/amazon/ags/html5/util/LocalizationUtil;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;-><init>(Landroid/app/Activity;Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;)V

    .line 48
    iput-object p6, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    .line 49
    iput-object p2, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->uiPoster:Landroid/os/Handler;

    .line 50
    iput-object p5, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->jsRepository:Lcom/amazon/ags/html5/javascript/JavascriptRepository;

    .line 51
    invoke-virtual {p4}, Lcom/amazon/ags/html5/util/WebViewFactory;->newToastWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    .line 52
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 53
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->jsRepository:Lcom/amazon/ags/html5/javascript/JavascriptRepository;

    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Lcom/amazon/ags/html5/javascript/JavascriptRepository;->loadToastJavascript(Landroid/webkit/WebView;)V

    .line 54
    iput-object p7, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    .line 57
    const-string/jumbo v0, "{}"

    iput-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->data:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->addView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->setViewParams(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->data:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setViewParams(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 114
    const/high16 v1, 0x43a00000    # 320.0f

    invoke-virtual {p0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 115
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 116
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 117
    return-void
.end method


# virtual methods
.method protected initView()Landroid/view/View;
    .locals 10

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    invoke-virtual {v1}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 69
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->data:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v3, "toastDurationFadeIn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 71
    const-string/jumbo v4, "toastDurationShow"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 72
    const-string/jumbo v5, "toastDurationFadeOut"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 73
    const-string/jumbo v6, "locationIsGCDefault"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    if-eqz v3, :cond_0

    .line 75
    iget-object v6, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->toastParams:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->setFadeInDuration(J)V

    .line 77
    :cond_0
    if-eqz v4, :cond_1

    .line 78
    iget-object v3, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->toastParams:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v3, v6, v7}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->setDuration(J)V

    .line 80
    :cond_1
    if-eqz v5, :cond_2

    .line 81
    iget-object v3, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->toastParams:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->setFadeOutDuration(J)V

    .line 83
    :cond_2
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->toastParams:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;

    sget-object v3, Lcom/amazon/ags/api/overlay/PopUpLocation;->BOTTOM_CENTER:Lcom/amazon/ags/api/overlay/PopUpLocation;

    invoke-virtual {v2, v3}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->setPopUpLocation(Lcom/amazon/ags/api/overlay/PopUpLocation;)V

    .line 89
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "javascript:var data = {params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", aggregateCount:0, languageCode:\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\', countryCode:\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "renderData(data);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->webView:Landroid/webkit/WebView;

    return-object v0

    .line 86
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->toastParams:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;

    sget-object v3, Lcom/amazon/ags/html5/overlay/PopUpPrefs;->INSTANCE:Lcom/amazon/ags/html5/overlay/PopUpPrefs;

    invoke-virtual {v3}, Lcom/amazon/ags/html5/overlay/PopUpPrefs;->getLocation()Lcom/amazon/ags/api/overlay/PopUpLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$ToastParams;->setPopUpLocation(Lcom/amazon/ags/api/overlay/PopUpLocation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    sget-object v1, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to prepare toast content.  Toast parameters not valid JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setServiceHelper(Lcom/amazon/ags/html5/service/ServiceHelper;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    .line 158
    return-void
.end method

.method public setToastData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->data:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public show(Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;->show(Landroid/os/Handler;)V

    .line 131
    new-instance v0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast$2;

    invoke-direct {v0, p0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast$2;-><init>(Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;)V

    .line 149
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->serviceHelper:Lcom/amazon/ags/html5/service/ServiceHelper;

    invoke-interface {v1, v0}, Lcom/amazon/ags/html5/service/ServiceHelper;->handleRequestAsync(Lcom/amazon/ags/client/JSONRequest;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    sget-object v0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error submitting toast metric request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:var data = {params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/ags/html5/util/JSONUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", aggregateCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "renderData(data);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->uiPoster:Landroid/os/Handler;

    new-instance v2, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast$1;-><init>(Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method
