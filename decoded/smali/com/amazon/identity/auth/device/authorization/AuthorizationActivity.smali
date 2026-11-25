.class public Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Registered"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "uri is null onCreate - closing activity"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->finish()V

    .line 84
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v1, Lcom/amazon/identity/auth/device/authorization/AuthorizationResponseParser;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/authorization/AuthorizationResponseParser;-><init>()V

    .line 34
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/identity/auth/device/authorization/AuthorizationResponseParser;->getCallbackInfo(Ljava/lang/String;)Lcom/amazon/identity/auth/device/authorization/CallbackInfo;

    move-result-object v2

    .line 36
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 38
    sget-object v3, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Received response from WebBroswer for OAuth2 flow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "response="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mRequestId:Ljava/lang/String;

    iget-object v4, v2, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mRequestedScopes:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v4}, Lcom/amazon/identity/auth/device/authorization/AuthorizationResponseParser;->extractResultsBundle(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CAUSE_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    iget-object v1, v2, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mlistener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    invoke-interface {v1, v0}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onCancel(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->finish()V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    iget-object v1, v2, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mlistener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, v2, Lcom/amazon/identity/auth/device/authorization/CallbackInfo;->mlistener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    invoke-interface {v1, v0}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    .line 83
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->finish()V

    goto :goto_0

    .line 47
    :cond_2
    :try_start_1
    new-instance v1, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity$1;-><init>(Lcom/amazon/identity/auth/device/authorization/AuthorizationActivity;Lcom/amazon/identity/auth/device/authorization/CallbackInfo;)V

    invoke-virtual {v1, v3, v0, v4}, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;->doExchange(Landroid/content/Context;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
