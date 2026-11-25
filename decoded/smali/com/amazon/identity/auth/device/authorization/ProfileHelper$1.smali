.class final Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/identity/auth/device/shared/APIListener;


# instance fields
.field final synthetic val$appInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/shared/APIListener;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$appInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/amazon/identity/auth/device/AuthError;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/shared/APIListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    .line 93
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 51
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->TOKEN:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/datastore/ProfileDataSource;->deleteAllRows()I

    .line 55
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Not authorized for getProfile"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$100(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/shared/APIListener;->onSuccess(Landroid/os/Bundle;)V

    .line 88
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$appInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$200(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Returning local profile information"

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/amazon/identity/auth/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$100(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/shared/APIListener;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    .line 67
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$300(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Returning remote profile information"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$400(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$100(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/identity/auth/device/shared/APIListener;->onSuccess(Landroid/os/Bundle;)V

    .line 70
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$appInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$500(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/identity/auth/device/InvalidTokenAuthError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_IO:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-interface {v1, v2}, Lcom/amazon/identity/auth/device/shared/APIListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    .line 76
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid token sent to the server. Cleaning up local state"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/datastore/DatabaseHelper;->clearAuthorizationState(Landroid/content/Context;)V

    .line 78
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    invoke-interface {v1, v0}, Lcom/amazon/identity/auth/device/shared/APIListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    goto/16 :goto_0

    .line 80
    :catch_2
    move-exception v0

    .line 81
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    invoke-interface {v1, v0}, Lcom/amazon/identity/auth/device/shared/APIListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    goto/16 :goto_0

    .line 83
    :catch_3
    move-exception v0

    .line 84
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ProfileHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/ProfileHelper$1;->val$listener:Lcom/amazon/identity/auth/device/shared/APIListener;

    new-instance v2, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_JSON:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v2, v0, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-interface {v1, v2}, Lcom/amazon/identity/auth/device/shared/APIListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    goto/16 :goto_0
.end method
