.class public Lcom/amazon/ags/html5/javascript/NativeCallHandler;
.super Lcom/amazon/ags/html5/javascript/CallHandlerBase;
.source "SourceFile"


# static fields
.field private static final supportedCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final browserUtil:Lcom/amazon/ags/html5/util/BrowserUtil;

.field private final context:Landroid/content/Context;

.field private final emailUtil:Lcom/amazon/ags/html5/util/EmailUtil;

.field private final gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

.field private final imageManager:Lcom/amazon/ags/html5/util/ImageManager;

.field private final localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

.field private final networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

.field private final offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getNetworkInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "getPackageName"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "openEmailEditor"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "queueOfflineEvent"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "downloadImages"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "getLocaleInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "getVariationVariable"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "NOTIFY_SIGN_IN_STATE_CHANGE"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->supportedCalls:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/amazon/ags/html5/util/NetworkUtil;Lcom/amazon/ags/html5/util/BrowserUtil;Lcom/amazon/ags/html5/util/EmailUtil;Lcom/amazon/ags/storage/OfflineEventManager;Lcom/amazon/ags/html5/util/ImageManager;Lcom/amazon/ags/html5/util/LocalizationUtil;Lcom/amazon/ags/html5/content/GCVariationManager;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->supportedCalls:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/amazon/ags/html5/javascript/CallHandlerBase;-><init>(Landroid/os/Handler;Ljava/util/Set;)V

    .line 57
    iput-object p1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->context:Landroid/content/Context;

    .line 58
    iput-object p6, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;

    .line 59
    iput-object p3, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

    .line 60
    iput-object p4, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->browserUtil:Lcom/amazon/ags/html5/util/BrowserUtil;

    .line 61
    iput-object p5, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->emailUtil:Lcom/amazon/ags/html5/util/EmailUtil;

    .line 62
    iput-object p7, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->imageManager:Lcom/amazon/ags/html5/util/ImageManager;

    .line 63
    iput-object p8, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    .line 64
    iput-object p9, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    .line 65
    return-void
.end method

.method private downloadImages(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 145
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 149
    :try_start_0
    const-string/jumbo v0, "parameters"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 152
    const-string/jumbo v1, "imageData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 153
    const-string/jumbo v1, "images"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 166
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 167
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 169
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 170
    const-string/jumbo v4, "imageUrl"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 172
    iget-object v4, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->imageManager:Lcom/amazon/ags/html5/util/ImageManager;

    invoke-virtual {v4, v1}, Lcom/amazon/ags/html5/util/ImageManager;->downloadImage(Ljava/lang/String;)V

    .line 173
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 167
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to get image data from request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_2
    return-void

    .line 159
    :catch_1
    move-exception v0

    .line 160
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot process downloadImages request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 175
    :catch_2
    move-exception v1

    .line 176
    iget-object v4, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to get image data for specific image"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 177
    :catch_3
    move-exception v1

    .line 178
    iget-object v4, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Cannot process specific image download"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 184
    :cond_1
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getNetworkInfo(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 250
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 253
    :try_start_0
    const-string/jumbo v0, "connected"

    iget-object v2, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/util/NetworkUtil;->isNetworkConnected()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    iget-object v2, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to get network state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getPackageName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 261
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 263
    :try_start_0
    const-string/jumbo v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error building response for getPackageName"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifySignedInStateChange(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 272
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 274
    :try_start_0
    const-string/jumbo v1, "parameters"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 275
    const-string/jumbo v2, "isSignedIn"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/amazon/ags/client/player/PlayerClientImpl;->notifySignedInListener(Z)V

    .line 276
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error notifying sign in state change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openBrowser(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 211
    :try_start_0
    const-string/jumbo v0, "parameters"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 212
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->browserUtil:Lcom/amazon/ags/html5/util/BrowserUtil;

    invoke-virtual {v1, v0}, Lcom/amazon/ags/html5/util/BrowserUtil;->launchBrowser(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to get browser parameters from request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot process launch browser request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openEmailEditor(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 229
    :try_start_0
    const-string/jumbo v0, "parameters"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 231
    const-string/jumbo v1, "mailTo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    const-string/jumbo v2, "subject"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    const-string/jumbo v3, "body"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v3, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->emailUtil:Lcom/amazon/ags/html5/util/EmailUtil;

    invoke-virtual {v3, v1, v2, v0}, Lcom/amazon/ags/html5/util/EmailUtil;->launchEmailEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 246
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to get email parameters from request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :catch_1
    move-exception v0

    .line 241
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot process open email request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queueOfflineEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 189
    :try_start_0
    const-string/jumbo v0, "parameters"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "eventJson"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance v0, Lcom/amazon/ags/storage/OfflineEvent;

    invoke-direct {v0, v1}, Lcom/amazon/ags/storage/OfflineEvent;-><init>(Lorg/json/JSONObject;)V

    .line 195
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;

    invoke-interface {v1, v0}, Lcom/amazon/ags/storage/OfflineEventManager;->submitEvent(Lcom/amazon/ags/storage/OfflineEvent;)Lcom/amazon/ags/storage/OfflineEventId;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to get event parameters from request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot process queue offline event request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retrieveLocaleInfo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    :try_start_0
    const-string/jumbo v1, "languageCode"

    iget-object v2, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string/jumbo v1, "countryCode"

    iget-object v2, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    invoke-virtual {v2}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to get locale information"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retrieveVariationVariable(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 103
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    :try_start_0
    const-string/jumbo v0, "parameters"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 108
    const-string/jumbo v2, "variation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    const-string/jumbo v3, "variationVariableDefaultValue"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/content/GCVariationManager;->getCachedVariations()Ljava/util/Map;

    move-result-object v0

    .line 112
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    const-string/jumbo v2, "variation"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SUCCESS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_1
    return-void

    .line 116
    :cond_0
    :try_start_1
    const-string/jumbo v0, "variation"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to get variation data from request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :catch_1
    move-exception v0

    .line 123
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot process getVariationVariable request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const-string/jumbo v0, "{}"

    const-string/jumbo v1, "ERROR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected handleMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 70
    const-string/jumbo v1, "getNetworkInfo"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->getNetworkInfo(Ljava/lang/String;)V

    .line 99
    :goto_0
    return v0

    .line 73
    :cond_0
    const-string/jumbo v1, "getPackageName"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0, p1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->getPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    const-string/jumbo v1, "openBrowser"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->openBrowser(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 79
    :cond_2
    const-string/jumbo v1, "openEmailEditor"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->openEmailEditor(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 82
    :cond_3
    const-string/jumbo v1, "queueOfflineEvent"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->queueOfflineEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 85
    :cond_4
    const-string/jumbo v1, "downloadImages"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->downloadImages(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 88
    :cond_5
    const-string/jumbo v1, "getLocaleInfo"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->retrieveLocaleInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_6
    const-string/jumbo v1, "getVariationVariable"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 92
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->retrieveVariationVariable(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 94
    :cond_7
    const-string/jumbo v1, "NOTIFY_SIGN_IN_STATE_CHANGE"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 95
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->notifySignedInStateChange(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 99
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method
