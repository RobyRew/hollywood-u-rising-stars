.class Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;

.field touched:Z

.field final synthetic val$jsonData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;

    iput-object p2, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;->val$jsonData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;->touched:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    iget-boolean v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;->touched:Z

    if-nez v0, :cond_0

    .line 73
    iput-boolean v4, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;->touched:Z

    .line 74
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;

    invoke-static {v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;->access$000(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;)Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableWebViewToast;->destroy()V

    .line 77
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;->val$jsonData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v1, "ACTION_MAPPINGS"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;

    invoke-static {v1}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;->access$100(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;)Lcom/amazon/ags/html5/service/ServiceHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    const-string/jumbo v2, "TOAST_TOUCH_X"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v2, "TOAST_TOUCH_Y"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v2, "TOAST_WIDTH"

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v2, "TOAST_HEIGHT"

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    new-instance v2, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1$1;-><init>(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    .line 105
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl$1;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;

    invoke-static {v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;->access$100(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;)Lcom/amazon/ags/html5/service/ServiceHelper;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amazon/ags/html5/service/ServiceHelper;->handleRequestAsync(Lcom/amazon/ags/client/JSONRequest;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :cond_0
    :goto_0
    return v4

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-static {}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error carrying out toast touch event due to JSON error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    invoke-static {}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastFactoryImpl;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Unexpected error carrying out toast touch event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
