.class Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

.field final synthetic val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

.field final synthetic val$scopes:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager$1;->this$0:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager$1;->val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager$1;->val$scopes:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 196
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager$1;->this$0:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->access$000(Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager$1;->val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    const-string/jumbo v2, "APIKey is invalid"

    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v2, v3}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    .line 208
    :goto_0
    return-void

    .line 202
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;-><init>()V

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager$1;->this$0:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->access$100(Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager$1;->this$0:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->access$100(Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager$1;->this$0:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->access$200(Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager$1;->val$scopes:[Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager$1;->val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/identity/auth/device/authorization/AuthorizationHelper;->authorize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/AuthError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager$1;->val$listener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    invoke-interface {v1, v0}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    goto :goto_0
.end method
