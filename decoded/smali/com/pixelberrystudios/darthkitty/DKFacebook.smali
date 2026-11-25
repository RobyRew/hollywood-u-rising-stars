.class public Lcom/pixelberrystudios/darthkitty/DKFacebook;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DK_FB_REQUEST_ERROR_DID_NOT_AUTHORIZED:I = 0x3

.field public static final DK_FB_REQUEST_ERROR_LOGIN_FAILED:I = 0x1

.field public static final DK_FB_REQUEST_ERROR_LOGOUT:I = 0x2

.field public static final DK_FB_REQUEST_ERROR_NETWORK:I = 0x0

.field public static final DK_FB_REQUEST_ERROR_NO_WIFI:I = 0x4

.field public static final DK_FB_SESSION_STATE_CLOSED:I = 0x6

.field public static final DK_FB_SESSION_STATE_CLOSED_LOGIN_FAILED:I = 0x5

.field public static final DK_FB_SESSION_STATE_CREATED:I = 0x0

.field public static final DK_FB_SESSION_STATE_CREATED_OPENING:I = 0x2

.field public static final DK_FB_SESSION_STATE_CREATED_TOKEN_LOADED:I = 0x1

.field public static final DK_FB_SESSION_STATE_ERROR:I = -0x2

.field public static final DK_FB_SESSION_STATE_NOT_INITIATED:I = -0x1

.field public static final DK_FB_SESSION_STATE_OPEN:I = 0x3

.field public static final DK_FB_SESSION_STATE_OPEN_TOKEN_EXTENDED:I = 0x4

.field public static final TAG:Ljava/lang/String; = "DKFacebook"

.field protected static a:[Ljava/lang/String;

.field protected static b:Landroid/app/Activity;

.field protected static c:Lcom/facebook/appevents/AppEventsLogger;

.field protected static d:Lcom/facebook/CallbackManager;

.field protected static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->e:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native DKFacebookBroadcastOnSessionStateChanged(I)V
.end method

.method protected static native DKFacebookOnGetFriendsDidCompleteError(II)V
.end method

.method protected static native DKFacebookOnGetFriendsDidCompleteSuccess(ILjava/lang/String;)V
.end method

.method protected static native DKFacebookOnGetMeDidCompleteError(II)V
.end method

.method protected static native DKFacebookOnGetMeDidCompleteSuccess(ILjava/lang/String;)V
.end method

.method protected static native DKFacebookOnPostToFeedCompleteCancelled(I)V
.end method

.method protected static native DKFacebookOnPostToFeedCompleteError(II)V
.end method

.method protected static native DKFacebookOnPostToFeedCompleteSuccess(I)V
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public static activateApp()V
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/content/Context;)V

    .line 329
    return-void
.end method

.method public static authorizeWithReadPermissions([Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    sput-object p0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->a:[Ljava/lang/String;

    .line 164
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKFacebook;->b:Landroid/app/Activity;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFriends(I)V
    .locals 4

    .prologue
    .line 251
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/darthkitty/t;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/darthkitty/t;-><init>(I)V

    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->newMyFriendsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 270
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 271
    const-string/jumbo v2, "fields"

    const-string/jumbo v3, "name, first_name, last_name, installed"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 273
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 274
    return-void
.end method

.method public static getMe(I)V
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Activity not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->b:Landroid/app/Activity;

    new-instance v1, Lcom/pixelberrystudios/darthkitty/p;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/darthkitty/p;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public static hasPermission(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public static hasPermissions([Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public static isSessionValid()Z
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->c:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0, p0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5

    .prologue
    .line 336
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 337
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 338
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 339
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_0

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 340
    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_1
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->c:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0, p0, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 344
    return-void
.end method

.method public static logPurchase(DLjava/lang/String;)V
    .locals 4

    .prologue
    .line 348
    :try_start_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->c:Lcom/facebook/appevents/AppEventsLogger;

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    const-string/jumbo v0, "DKFacebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad currency code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logout()V
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 177
    return-void
.end method

.method public static maximizeDialogVisibility(Landroid/app/Dialog;)V
    .locals 4

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x0

    .line 277
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 278
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 279
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 281
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 282
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 283
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 284
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 285
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->d:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 356
    return-void
.end method

.method public static postToMyFeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 289
    sget-object v7, Lcom/pixelberrystudios/darthkitty/DKFacebook;->b:Landroid/app/Activity;

    new-instance v0, Lcom/pixelberrystudios/darthkitty/v;

    move v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/pixelberrystudios/darthkitty/v;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 98
    sput-object p0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->b:Landroid/app/Activity;

    .line 99
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->c:Lcom/facebook/appevents/AppEventsLogger;

    .line 101
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->d:Lcom/facebook/CallbackManager;

    .line 103
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKFacebook;->d:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/pixelberrystudios/darthkitty/l;

    invoke-direct {v2}, Lcom/pixelberrystudios/darthkitty/l;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 132
    return-void
.end method

.method public static setUseFql(Z)V
    .locals 0

    .prologue
    .line 94
    sput-boolean p0, Lcom/pixelberrystudios/darthkitty/DKFacebook;->e:Z

    .line 95
    return-void
.end method
