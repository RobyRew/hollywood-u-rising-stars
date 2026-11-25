.class Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

.field final synthetic val$response:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;Landroid/os/Bundle;Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->this$0:Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->val$response:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 287
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->val$response:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->val$response:Landroid/os/Bundle;

    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->val$response:Landroid/os/Bundle;

    const-string/jumbo v1, "clientId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->val$response:Landroid/os/Bundle;

    const-string/jumbo v1, "redirectUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->val$response:Landroid/os/Bundle;

    const-string/jumbo v1, "scope"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Params extracted from OAuth2 response"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "clientId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " redirectUri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " scopes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->this$0:Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    invoke-static/range {v0 .. v6}, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;->access$200(Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v2, "Response bundle from Authorization was empty"

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper$2;->val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v2, "Response bundle from Authorization was null"

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_SERVER_REPSONSE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    goto :goto_0
.end method
